import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';

part 'create_one_time_state.freezed.dart';

@freezed
class CreateOneTimeState with _$CreateOneTimeState {
  const factory CreateOneTimeState({
    String? first,
    String? second,
    String? third,
    String? fourth,
    String? message,
    IconTypeEnum? icon,
    ColorTypeEnum? color,
  }) = _CreateOneTimeState;
}

enum CreateOneTimeIsWaiting {
  wait,
}
