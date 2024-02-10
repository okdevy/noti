import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_one_time_state.freezed.dart';

@freezed
class CreateOneTimeState with _$CreateOneTimeState {
  const factory CreateOneTimeState({
    String? first,
    String? second,
    String? third,
    String? fourth,
    String? message,
    int? iconIndex,
    int? colorIndex,
  }) = _CreateOneTimeState;
}

enum CreateOneTimeIsWaiting {
  wait,
}
