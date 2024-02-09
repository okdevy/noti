import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_one_time_notification_state.freezed.dart';

@freezed
class CreateOneTimeNotificationState with _$CreateOneTimeNotificationState {
  const factory CreateOneTimeNotificationState({
    String? first,
    String? second,
    String? third,
    String? fourth,
    String? message,
    @Default(0) int iconIndex,
    @Default(0) int colorIndex,
  }) = _CreateOneTimeNotificationState;
}
