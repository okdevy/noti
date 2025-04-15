import 'package:async_redux/async_redux.dart';
import 'package:models/enum/color_type.dart';

import '../../app_state.dart';
import '../create_one_time_notification_selectors.dart';

class SetColorAction extends ReduxAction<AppState> {
  SetColorAction({
    required this.color,
  });

  final ColorTypeEnum? color;

  @override
  AppState reduce() {
    final previousColor = selectCreateOneTimeColor(state);
    if (previousColor == color) {
      return state.copyWith.createOneTime(color: null);
    }

    return state.copyWith.createOneTime(color: color);
  }
}
