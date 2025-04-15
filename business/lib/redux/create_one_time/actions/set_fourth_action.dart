import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetFourthAction extends ReduxAction<AppState> {
  SetFourthAction(this.fourth);

  final String fourth;

  @override
  AppState reduce() => state.copyWith.createOneTime(fourth: fourth);
}
