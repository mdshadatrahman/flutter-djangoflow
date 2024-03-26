// Mocks generated by Mockito 5.4.4 from annotations
// in djangoflow_facebook_analytics/test/src/features/advertise_tracking/facebook_advertise_tracking_updater_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:facebook_app_events/facebook_app_events.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

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

/// A class which mocks [FacebookAppEvents].
///
/// See the documentation for Mockito's code generation for more information.
class MockFacebookAppEvents extends _i1.Mock implements _i2.FacebookAppEvents {
  @override
  _i3.Future<void> clearUserData() => (super.noSuchMethod(
        Invocation.method(
          #clearUserData,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> setUserData({
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? dateOfBirth,
    String? gender,
    String? city,
    String? state,
    String? zip,
    String? country,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setUserData,
          [],
          {
            #email: email,
            #firstName: firstName,
            #lastName: lastName,
            #phone: phone,
            #dateOfBirth: dateOfBirth,
            #gender: gender,
            #city: city,
            #state: state,
            #zip: zip,
            #country: country,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> clearUserID() => (super.noSuchMethod(
        Invocation.method(
          #clearUserID,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> flush() => (super.noSuchMethod(
        Invocation.method(
          #flush,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<String?> getApplicationId() => (super.noSuchMethod(
        Invocation.method(
          #getApplicationId,
          [],
        ),
        returnValue: _i3.Future<String?>.value(),
        returnValueForMissingStub: _i3.Future<String?>.value(),
      ) as _i3.Future<String?>);

  @override
  _i3.Future<String?> getAnonymousId() => (super.noSuchMethod(
        Invocation.method(
          #getAnonymousId,
          [],
        ),
        returnValue: _i3.Future<String?>.value(),
        returnValueForMissingStub: _i3.Future<String?>.value(),
      ) as _i3.Future<String?>);

  @override
  _i3.Future<void> logEvent({
    required String? name,
    Map<String, dynamic>? parameters,
    double? valueToSum,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logEvent,
          [],
          {
            #name: name,
            #parameters: parameters,
            #valueToSum: valueToSum,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logPushNotificationOpen({
    required Map<String, dynamic>? payload,
    String? action,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logPushNotificationOpen,
          [],
          {
            #payload: payload,
            #action: action,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> setUserID(String? id) => (super.noSuchMethod(
        Invocation.method(
          #setUserID,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logCompletedRegistration({String? registrationMethod}) =>
      (super.noSuchMethod(
        Invocation.method(
          #logCompletedRegistration,
          [],
          {#registrationMethod: registrationMethod},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logRated({double? valueToSum}) => (super.noSuchMethod(
        Invocation.method(
          #logRated,
          [],
          {#valueToSum: valueToSum},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logViewContent({
    Map<String, dynamic>? content,
    String? id,
    String? type,
    String? currency,
    double? price,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logViewContent,
          [],
          {
            #content: content,
            #id: id,
            #type: type,
            #currency: currency,
            #price: price,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logAddToCart({
    Map<String, dynamic>? content,
    required String? id,
    required String? type,
    required String? currency,
    required double? price,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logAddToCart,
          [],
          {
            #content: content,
            #id: id,
            #type: type,
            #currency: currency,
            #price: price,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logAddToWishlist({
    Map<String, dynamic>? content,
    required String? id,
    required String? type,
    required String? currency,
    required double? price,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logAddToWishlist,
          [],
          {
            #content: content,
            #id: id,
            #type: type,
            #currency: currency,
            #price: price,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> setAutoLogAppEventsEnabled(bool? enabled) =>
      (super.noSuchMethod(
        Invocation.method(
          #setAutoLogAppEventsEnabled,
          [enabled],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> setDataProcessingOptions(
    List<String>? options, {
    int? country,
    int? state,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDataProcessingOptions,
          [options],
          {
            #country: country,
            #state: state,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logPurchase({
    required double? amount,
    required String? currency,
    Map<String, dynamic>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logPurchase,
          [],
          {
            #amount: amount,
            #currency: currency,
            #parameters: parameters,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logInitiatedCheckout({
    double? totalPrice,
    String? currency,
    String? contentType,
    String? contentId,
    int? numItems,
    bool? paymentInfoAvailable = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logInitiatedCheckout,
          [],
          {
            #totalPrice: totalPrice,
            #currency: currency,
            #contentType: contentType,
            #contentId: contentId,
            #numItems: numItems,
            #paymentInfoAvailable: paymentInfoAvailable,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> setAdvertiserTracking({
    required bool? enabled,
    bool? collectId = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setAdvertiserTracking,
          [],
          {
            #enabled: enabled,
            #collectId: collectId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logSubscribe({
    double? price,
    String? currency,
    required String? orderId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logSubscribe,
          [],
          {
            #price: price,
            #currency: currency,
            #orderId: orderId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logStartTrial({
    double? price,
    String? currency,
    required String? orderId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logStartTrial,
          [],
          {
            #price: price,
            #currency: currency,
            #orderId: orderId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logAdImpression({required String? adType}) =>
      (super.noSuchMethod(
        Invocation.method(
          #logAdImpression,
          [],
          {#adType: adType},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> logAdClick({required String? adType}) => (super.noSuchMethod(
        Invocation.method(
          #logAdClick,
          [],
          {#adType: adType},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
