import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetColorAction extends ReduxAction<AppState> {
  SetColorAction({
    required this.colorIndex,
  });

  final int colorIndex;

  @override
  AppState reduce() =>
      state.copyWith.createOneTimeNotification(colorIndex: colorIndex);
}
