import 'package:async_redux/async_redux.dart';

import '../app_state.dart';

class WriteNotificationAction extends ReduxAction<AppState> {
  WriteNotificationAction({required this.value});

  final String value;

  @override
  AppState reduce() => state.copyWith();
}
