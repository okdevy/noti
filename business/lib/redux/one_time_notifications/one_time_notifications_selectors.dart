import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../app_state.dart';
import 'models/one_time_notifications_state.dart';

/// returns waiting value
bool selectOneTimeNotificationsIsWaiting(AppState state) =>
    state.wait.isWaitingFor(OneTimeNotificationsWaiting.wait);

/// Returns [IMap<int, OneTimeNotification>] table
IMap<int, OneTimeNotification> selectOneTimeNotificationsTable(
  AppState state,
) =>
    state.oneTimeNotifications.table;

/// Returns [OneTimeNotification] value by id
OneTimeNotification selectOneTimeNotificationsById(
  AppState state, {
  required int id,
}) =>
    selectOneTimeNotificationsTable(state)[id]!;
