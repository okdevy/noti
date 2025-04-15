import 'package:async_redux/async_redux.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../../notifications/actions/add_notifications_action.dart';
import '../../services/isar/src/models/notification_data.dart';

class RetrieveAllNotificationsAction extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    final result = await getIsar.getAll();
    final notifications = result.map((e) => e.asNotification).toIList();

    dispatchSync(
      AddNotificationsAction(notifications: notifications),
      notify: false,
    );

    return null;
  }
}
