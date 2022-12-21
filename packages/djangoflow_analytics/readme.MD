## djangoflow_analytics

The idea is to utilize https://github.com/surfstudio/flutter-analytics package for flutter and create modular implementation of analytics for firebase, facebook and mixpanel which we can re-reuse throughout different projects.

For each of the analytics module there should be Action, ActionPerformer, AnalyticsService that we can use/add with the `DefaultAnalyticService` from `flutter-analytics` package in a unified way.

An example of how to implement with firebase can be found here: https://github.com/surfstudio/flutter-analytics/tree/main/example/lib
