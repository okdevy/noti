import 'package:async_redux/async_redux.dart';
import 'package:models/enum/icon_type.dart';

import '../../app_state.dart';
import '../create_one_time_notification_selectors.dart';

class SetIconAction extends ReduxAction<AppState> {
  SetIconAction({
    required this.icon,
  });

  final IconTypeEnum? icon;

  @override
  AppState? reduce() {
    final previousIcon = selectCreateOneTimeIcon(state);
    if (previousIcon == icon) {
      return state.copyWith.createOneTime(icon: null);
    }

    return state.copyWith.createOneTime(icon: icon);
  }
}
