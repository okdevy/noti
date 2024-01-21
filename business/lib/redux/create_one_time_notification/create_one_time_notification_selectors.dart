import '../app_state.dart';
import '../one_time_notifications/models/one_time_notifications_state.dart';

/// Returns value
OneTimeNotification? selectCreateOneTimeNotificationValue(AppState state) =>
    state.createOneTimeNotification.notification;
