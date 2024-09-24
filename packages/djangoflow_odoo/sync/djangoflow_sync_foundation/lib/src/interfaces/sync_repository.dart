import '../interfaces/backend.dart';
import '../interfaces/repository.dart';
import '../interfaces/sync_strategy.dart';
import 'sync_model.dart';
import '../utils/id_generator.dart';
import '../utils/logger.dart';

abstract class SyncRepository<T extends SyncModel> implements Repository<T> {
  @override
  final Backend<T> primaryBackend;

  final Backend<T> secondaryBackend;

  final SyncStrategy<T> syncStrategy;

  SyncRepository(this.primaryBackend, this.secondaryBackend, this.syncStrategy);

  Future<bool> get isPrimaryBackendAvailable => primaryBackend.isAvailable();

  @override
  Future<List<T>> getAll() async {
    logger.d('Getting all items ${await isPrimaryBackendAvailable}');
    if (await isPrimaryBackendAvailable) {
      try {
        final items = await primaryBackend.getAll();
        await updateSecondaryBackend(items);
        await syncStrategy.syncBatch(items, primaryBackend);
        await syncStrategy.syncBatch(items, secondaryBackend);
        return items;
      } catch (_) {
        return secondaryBackend.getAll();
      }
    } else {
      return secondaryBackend.getAll();
    }
  }

  @override
  Future<T?> getById(int id) async {
    if (await isPrimaryBackendAvailable) {
      try {
        final item = await primaryBackend.getById(id);
        if (item != null) {
          await updateSecondaryBackend([item]);
          await syncStrategy.syncBatch([item], primaryBackend);
          await syncStrategy.syncBatch([item], secondaryBackend);
        }
        return item;
      } catch (_) {
        return secondaryBackend.getById(id);
      }
    } else {
      return secondaryBackend.getById(id);
    }
  }

  @override
  Future<T> create(T item) async {
    if (await isPrimaryBackendAvailable) {
      try {
        final createdItem = await primaryBackend.create(item);
        await updateSecondaryBackend([createdItem]);
        return createdItem;
      } catch (_) {
        return _createWithTemporaryId(item);
      }
    } else {
      return _createWithTemporaryId(item);
    }
  }

  Future<T> _createWithTemporaryId(T item) async {
    final temporaryId = IdGenerator.generateTemporaryId();

    return secondaryBackend.create(item.copyWith(id: temporaryId) as T);
  }

  @override
  Future<T> update(T item) async {
    if (await isPrimaryBackendAvailable) {
      try {
        final updatedItem = await primaryBackend.update(item);
        await updateSecondaryBackend([updatedItem]);
        return updatedItem;
      } catch (_) {
        return secondaryBackend.update(item);
      }
    } else {
      return secondaryBackend.update(item);
    }
  }

  @override
  Future<void> delete(int id) async {
    if (await isPrimaryBackendAvailable) {
      try {
        await primaryBackend.delete(id);
        await secondaryBackend.delete(id);
      } catch (_) {
        final item = await secondaryBackend.getById(id);
        if (item != null) {
          await secondaryBackend
              .update(item.copyWith(isMarkedAsDeleted: true) as T);
        }
      }
    } else {
      final item = await secondaryBackend.getById(id);
      if (item != null) {
        await secondaryBackend
            .update(item.copyWith(isMarkedAsDeleted: true) as T);
      }
    }
  }

  Future<void> updateSecondaryBackend(List<T> items) async {
    for (var item in items) {
      await secondaryBackend.update(item);
    }
  }

  Future<void> sync() async {
    if (await isPrimaryBackendAvailable) {
      await syncStrategy.sync(secondaryBackend, primaryBackend);
      await syncStrategy.sync(primaryBackend, secondaryBackend);
    }
  }
}
