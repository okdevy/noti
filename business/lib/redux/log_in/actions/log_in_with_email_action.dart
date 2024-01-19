import 'dart:async';

import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../../session/actions/set_token_action.dart';
import '../log_in_selectors.dart';
import '../models/log_in_state.dart';

class LogInWithEmailAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(LogInWaiting.wait));

  @override
  void after() =>
      dispatchSync(WaitAction.remove(LogInWaiting.wait), notify: false);

  @override
  Future<AppState> reduce() async {
    final first = selectLogInFirst(state);
    final second = selectLogInSecond(state);
    final third = selectLogInThird(state);
    final fourth = selectLogInFourth(state);
    final time = selectLogInTime(state);

    final input = '$first$second:$third$fourth';
    final result = time == input;

    if (!result) {
      return state.copyWith.logIn(
        isTimeWrong: true,
        first: '',
        second: '',
        third: '',
        fourth: '',
      );
    }

    dispatchSync(SetTokenAction(value: 'token'));

    return state.copyWith(logIn: const LogInState());
  }
}
