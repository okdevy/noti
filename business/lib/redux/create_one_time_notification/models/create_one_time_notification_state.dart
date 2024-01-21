import 'package:freezed_annotation/freezed_annotation.dart';

import '../../one_time_notifications/models/one_time_notifications_state.dart';

part 'create_one_time_notification_state.freezed.dart';

@freezed
class CreateOneTimeNotificationState with _$CreateOneTimeNotificationState {
  const factory CreateOneTimeNotificationState({
    OneTimeNotification? notification,
  }) = _CreateOneTimeNotificationState;
}
