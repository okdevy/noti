import 'package:async_redux/async_redux.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../../notifications/actions/delete_notification_by_id_action.dart';
import '../models/one_time_view_state.dart';
import '../one_time_view_selectors.dart';

class DeleteOneTimeAction extends ReduxAction<AppState> {
  DeleteOneTimeAction({
    required this.notificationId,
  });

  final int notificationId;

  @override
  void before() => dispatchSync(WaitAction.add(OneTimeViewIsWaiting.wait));

  @override
  void after() => dispatchSync(WaitAction.remove(OneTimeViewIsWaiting.wait));

  @override
  Future<AppState> reduce() async {
    await getIsar.delete(id: notificationId);
    final view = selectOneTimeView(state);
    final updated = view.remove(notificationId);
    dispatchSync(
      DeleteNotificationByIdAction(notificationId: notificationId),
      notify: false,
    );

    return state.copyWith.oneTimeView(view: updated);
  }
}
