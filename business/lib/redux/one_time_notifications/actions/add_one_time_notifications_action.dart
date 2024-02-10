import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/notifications_state.dart';
import '../notifications_selectors.dart';

class AddOneTimeNotificationsAction extends ReduxAction<AppState> {
  AddOneTimeNotificationsAction({
    required this.oneTimeNotification,
  });

  final Notification oneTimeNotification;

  @override
  AppState reduce() {
    final table = selectOneTimeNotificationsTable(state);
    final updatedTable = table.add(oneTimeNotification.id, oneTimeNotification);

    return state.copyWith.notifications(table: updatedTable);
  }
}
