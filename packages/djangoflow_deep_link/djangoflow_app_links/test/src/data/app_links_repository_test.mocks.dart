// Mocks generated by Mockito 5.4.2 from annotations
// in djangoflow_app_links/test/src/data/app_links_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:djangoflow_app_links/src/data/app_links_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [AppLinksRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppLinksRepository extends _i1.Mock
    implements _i2.AppLinksRepository {
  @override
  _i3.Future<Uri?> getInitialLink() => (super.noSuchMethod(
        Invocation.method(
          #getInitialLink,
          [],
        ),
        returnValue: _i3.Future<Uri?>.value(),
        returnValueForMissingStub: _i3.Future<Uri?>.value(),
      ) as _i3.Future<Uri?>);
  @override
  _i3.Stream<Uri> getLinkStream() => (super.noSuchMethod(
        Invocation.method(
          #getLinkStream,
          [],
        ),
        returnValue: _i3.Stream<Uri>.empty(),
        returnValueForMissingStub: _i3.Stream<Uri>.empty(),
      ) as _i3.Stream<Uri>);
}
