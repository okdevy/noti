import 'package:async_redux/async_redux.dart';
import 'package:intl/intl.dart';

import '../../app_state.dart';

class InitLogInAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final now = DateTime.now();
    final time = DateFormat.Hm().format(now);

    return state.copyWith.logIn(time: time);
  }
}
