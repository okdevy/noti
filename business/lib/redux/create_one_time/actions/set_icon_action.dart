import 'package:async_redux/async_redux.dart';
import 'package:models/enum/icon_type.dart';

import '../../app_state.dart';

class SetIconAction extends ReduxAction<AppState> {
  SetIconAction({
    required this.icon,
  });

  final IconTypeEnum? icon;

  @override
  AppState reduce() => state.copyWith.createOneTime(icon: icon);
}
