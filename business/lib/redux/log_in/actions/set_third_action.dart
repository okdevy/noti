import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetThirdAction extends ReduxAction<AppState> {
  SetThirdAction(this.third);

  final String third;

  @override
  AppState reduce() => state.copyWith.logIn(third: third);
}
