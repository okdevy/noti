import 'package:async_redux/async_redux.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../../one_time_notifications/actions/add_one_time_notifications_action.dart';
import '../../one_time_notifications/models/one_time_notifications_state.dart';
import '../../services/isar/src/models/notification_data.dart';
import '../create_one_time_notification_selectors.dart';
import '../models/create_one_time_state.dart';

class CreateOneTimeAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(CreateOneTimeIsWaiting.wait));

  @override
  void after() => dispatchSync(WaitAction.remove(CreateOneTimeIsWaiting.wait));

  @override
  Future<AppState?> reduce() async {
    final first = selectCreateOneTimeFirst(state);
    final second = selectCreateOneTimeSecond(state);
    final third = selectCreateOneTimeThird(state);
    final fourth = selectCreateOneTimeFourth(state);
    final message = selectCreateOneTimeMessage(state)!;
    final icon = selectCreateOneTimeIcon(state);
    final color = selectCreateOneTimeColor(state);

    final time = DateTime.parse('$first$second:$third$fourth');

    final data = NotificationData()
      ..message = message
      ..time = time;

    if (icon != null) {
      data.icon = icon;
    }

    if (color != null) {
      data.color = color;
    }

    final result = await getIsar.writeTxn(data: data);

    final notification = OneTimeNotification(
      id: result,
      message: message,
      time: time,
      icon: icon,
      color: color,
    );

    dispatchSync(
      AddOneTimeNotificationsAction(oneTimeNotification: notification),
      notify: false,
    );

    return null;
  }
}
