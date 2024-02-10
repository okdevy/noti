import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../app_state.dart';
import 'models/notifications_state.dart';

/// returns waiting value
bool selectNotificationsIsWaiting(AppState state) =>
    state.wait.isWaitingFor(NotificationsWaiting.wait);

/// Returns [IMap<int, OneTimeNotification>] table
IMap<int, Notification> selectNotificationsTable(
  AppState state,
) =>
    state.notifications.table;

/// Returns [Notification] value by id
Notification selectNotificationsById(
  AppState state, {
  required int id,
}) =>
    selectNotificationsTable(state)[id]!;
