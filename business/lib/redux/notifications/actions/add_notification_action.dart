import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../../one_time_view/actions/add_one_time_id_action.dart';
import '../models/notifications_state.dart';
import '../notifications_selectors.dart';

class AddNotificationAction extends ReduxAction<AppState> {
  AddNotificationAction({
    required this.notification,
  });

  final Notification notification;

  @override
  AppState reduce() {
    final table = selectNotificationsTable(state);
    final updatedTable = table.add(notification.id, notification);
    dispatchSync(AddOneTimeIdAction(notificationId: notification.id));

    return state.copyWith.notifications(table: updatedTable);
  }
}
