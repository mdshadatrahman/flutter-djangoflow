// Mocks generated by Mockito 5.4.4 from annotations
// in djangoflow_analytics/test/src/data/analytics_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:analytics/analytics.dart' as _i2;
import 'package:analytics/core/analytic_action.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

import 'analytics_test.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [AnalyticActionPerformer].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnalyticActionPerformer extends _i1.Mock
    implements _i2.AnalyticActionPerformer<_i3.TestAnalyticsAction> {
  @override
  bool canHandle(_i4.AnalyticAction? action) => (super.noSuchMethod(
        Invocation.method(
          #canHandle,
          [action],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void perform(_i3.TestAnalyticsAction? action) => super.noSuchMethod(
        Invocation.method(
          #perform,
          [action],
        ),
        returnValueForMissingStub: null,
      );
}
