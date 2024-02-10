import 'package:async_redux/async_redux.dart';
import 'package:models/enum/color_type.dart';

import '../../app_state.dart';

class SetColorAction extends ReduxAction<AppState> {
  SetColorAction({
    required this.color,
  });

  final ColorTypeEnum? color;

  @override
  AppState reduce() => state.copyWith.createOneTime(color: color);
}
