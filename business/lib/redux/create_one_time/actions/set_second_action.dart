import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetSecondAction extends ReduxAction<AppState> {
  SetSecondAction(this.second);

  final String second;

  @override
  AppState reduce() => state.copyWith.createOneTime(second: second);
}
