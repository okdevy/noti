import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetMessageAction extends ReduxAction<AppState> {
  SetMessageAction({required this.value});

  final String value;

  @override
  AppState reduce() => state.copyWith.createOneTime(
        message: value,
      );
}
