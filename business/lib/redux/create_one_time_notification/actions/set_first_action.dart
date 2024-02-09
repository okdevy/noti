import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetFirstAction extends ReduxAction<AppState> {
  SetFirstAction(this.first);

  final String first;

  @override
  AppState reduce() => state.copyWith.createOneTimeNotification(first: first);
}
