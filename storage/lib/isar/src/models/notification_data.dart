import 'package:isar/isar.dart';
import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';
import 'package:models/enum/notification_type.dart';

part 'notification_data.g.dart';

@collection
class NotificationData {
  Id id = Isar.autoIncrement;

  String? message;

  @Index(type: IndexType.value)
  DateTime? time;

  @enumerated
  IconTypeEnum icon = IconTypeEnum.business;

  @enumerated
  ColorTypeEnum color = ColorTypeEnum.lemonYellow;

  @enumerated
  NotificationTypeEnum type = NotificationTypeEnum.oneTime;
}
