import 'package:async_redux/async_redux.dart';

import '../app_state.dart';
import '../services/isar/src/models/notification_data.dart';

class WriteNotificationAction extends ReduxAction<AppState> {
  WriteNotificationAction({
    required this.value,
  });

  final NotificationData value;

  @override
  Future<AppState> reduce() async {
//     await isar.writeTxn(() {
//   await isar.emails.put(value); // insert & update

    return state.copyWith();
  }
}
