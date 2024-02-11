import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';
import 'package:models/enum/notification_type.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(IMapConst<int, Notification>({})) IMap<int, Notification> table,
  }) = _NotificationsState;
}

@freezed
class Notification with _$Notification {
  const factory Notification({
    required int id,
    required DateTime? time,
    required String message,
    IconTypeEnum? icon,
    ColorTypeEnum? color,
    NotificationTypeEnum? type,
  }) = _Notification;
}
