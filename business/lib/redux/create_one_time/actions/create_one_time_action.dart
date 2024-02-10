import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class CreateOneTimeAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add());

  @override
  void after() => dispatchSync(WaitAction.remove());

  @override
  AppState reduce() => state.copyWith.createOneTime(colorIndex: 1);
}
