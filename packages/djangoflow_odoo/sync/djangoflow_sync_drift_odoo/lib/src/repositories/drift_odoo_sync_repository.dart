import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

import '../backends/drift_backend.dart';
import '../backends/odoo_backend.dart';
import '../database/database.dart';
import '../sync/drift_odoo_sync_strategy.dart';

abstract class DriftOdooSyncRepository<T extends SyncModel,
    TTable extends BaseTable> extends SyncRepository<T> {
  DriftOdooSyncRepository(
    OdooBackend<T> super.primaryBackend,
    DriftBackend<T, TTable, dynamic> super.secondaryBackend,
    DriftOdooSyncStrategy<T, TTable> super.syncStrategy,
  );

  String get modelName;

  @override
  Future<void> updateSecondaryBackend(List<T> items) async {
    await (syncStrategy as DriftOdooSyncStrategy<T, TTable>)
        .syncBatch(items, secondaryBackend, modelName: modelName);
  }

  @override
  Future<List<T>> getAll() async {
    if (await isPrimaryBackendAvailable) {
      try {
        final items = await primaryBackend.getAll();
        await updateSecondaryBackend(items);
        await (syncStrategy as DriftOdooSyncStrategy<T, TTable>)
            .syncBatch(items, primaryBackend, modelName: modelName);

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
          await (syncStrategy as DriftOdooSyncStrategy<T, TTable>)
              .syncBatch([item], primaryBackend, modelName: modelName);
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
    final driftOdooSyncStrategy =
        (syncStrategy as DriftOdooSyncStrategy<T, TTable>);
    if (await isPrimaryBackendAvailable) {
      try {
        final createdItem = await primaryBackend.create(item);
        await secondaryBackend.create(createdItem);
        await driftOdooSyncStrategy
            .syncBatch([createdItem], primaryBackend, modelName: modelName);
        await driftOdooSyncStrategy
            .syncBatch([createdItem], secondaryBackend, modelName: modelName);
        return createdItem;
      } catch (_) {
        return driftOdooSyncStrategy.createWithTemporaryId(item,
            secondaryBackend as DriftBackend<T, TTable, dynamic>, modelName);
      }
    } else {
      return driftOdooSyncStrategy.createWithTemporaryId(item,
          secondaryBackend as DriftBackend<T, TTable, dynamic>, modelName);
    }
  }

  @override
  Future<T> update(T item) async {
    if (await isPrimaryBackendAvailable) {
      try {
        final updatedItem = await primaryBackend.update(item);
        await updateSecondaryBackend([updatedItem]);
        await (syncStrategy as DriftOdooSyncStrategy<T, TTable>)
            .syncBatch([updatedItem], primaryBackend, modelName: modelName);
        return updatedItem;
      } catch (_) {
        return _updateSecondaryWithPendingSync(item);
      }
    } else {
      return _updateSecondaryWithPendingSync(item);
    }
  }

  Future<T> _updateSecondaryWithPendingSync(T item) async {
    final updatedItem = await secondaryBackend.update(item);
    await (syncStrategy as DriftOdooSyncStrategy<T, TTable>)
        .syncBatch([updatedItem], secondaryBackend, modelName: modelName);
    return updatedItem;
  }

  @override
  Future<void> delete(int id) async {
    final driftOdooSyncStrategy =
        (syncStrategy as DriftOdooSyncStrategy<T, TTable>);
    if (await isPrimaryBackendAvailable) {
      try {
        await primaryBackend.delete(id);
        await secondaryBackend.delete(id);
        // The sync strategy will handle updating the sync registry
        await driftOdooSyncStrategy.deleteRegistry(id, modelName);
      } catch (_) {
        await driftOdooSyncStrategy.markAsDeletedInSecondary(id,
            secondaryBackend as DriftBackend<T, TTable, dynamic>, modelName);
      }
    } else {
      await driftOdooSyncStrategy.markAsDeletedInSecondary(
          id, secondaryBackend as DriftBackend<T, TTable, dynamic>, modelName);
    }
  }

  @override
  Future<void> sync() async {
    if (await isPrimaryBackendAvailable) {
      await syncStrategy.sync(secondaryBackend, primaryBackend);
      await syncStrategy.sync(primaryBackend, secondaryBackend);
    }
  }
}
