import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/create_one_time_state.dart';

class CreateOneTimeAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(CreateOneTimeIsWaiting.wait));

  @override
  void after() => dispatchSync(WaitAction.remove(CreateOneTimeIsWaiting.wait));

  @override
  AppState reduce() {
    return state.copyWith.createOneTime(colorIndex: 1);
  }
}
