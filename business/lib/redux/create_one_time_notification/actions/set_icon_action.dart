import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetIconAction extends ReduxAction<AppState> {
  SetIconAction({
    required this.iconIndex,
  });

  final int iconIndex;

  @override
  AppState reduce() =>
      state.copyWith.createOneTimeNotification(iconIndex: iconIndex);
}
