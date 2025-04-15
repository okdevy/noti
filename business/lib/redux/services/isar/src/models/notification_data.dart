import 'package:isar/isar.dart';
import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';
import 'package:models/enum/notification_type.dart';

import '../../../../notifications/models/notifications_state.dart';

part 'notification_data.g.dart';

@collection
class NotificationData {
  Id id = Isar.autoIncrement;

  String? message;

  @Index(type: IndexType.value)
  DateTime? time;

  @enumerated
  IconTypeEnum icon = IconTypeEnum.none;

  @enumerated
  ColorTypeEnum color = ColorTypeEnum.none;

  @enumerated
  NotificationTypeEnum type = NotificationTypeEnum.oneTime;
}

extension NotificationDataExt on NotificationData {
  Notification get asNotification => Notification(
        id: id,
        time: time,
        message: message!,
        icon: icon,
        color: color,
        type: type,
      );
}
