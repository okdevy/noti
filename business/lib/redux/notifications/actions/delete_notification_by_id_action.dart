import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../notifications_selectors.dart';

class DeleteNotificationByIdAction extends ReduxAction<AppState> {
  DeleteNotificationByIdAction({
    required this.notificationId,
  });

  final int notificationId;

  @override
  AppState reduce() {
    final table = selectNotificationsTable(state);
    final updated = table.remove(notificationId);

    return state.copyWith.notifications(table: updated);
  }
}
