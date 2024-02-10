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
    int? iconIndex,
    int? colorIndex,
  }) = _CreateOneTimeNotificationState;
}
