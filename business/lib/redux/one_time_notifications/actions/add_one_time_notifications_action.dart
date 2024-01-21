import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/one_time_notifications_state.dart';
import '../one_time_notifications_selectors.dart';

class AddOneTimeNotificationsAction extends ReduxAction<AppState> {
  AddOneTimeNotificationsAction({
    required this.oneTimeNotification,
  });

  final OneTimeNotification oneTimeNotification;

  @override
  AppState reduce() {
    final table = selectOneTimeNotificationsTable(state);
    final updatedTable = table.add(oneTimeNotification.id, oneTimeNotification);

    return state.copyWith.oneTimeNotifications(table: updatedTable);
  }
}
