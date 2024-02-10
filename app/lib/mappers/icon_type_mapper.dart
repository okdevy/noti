import 'package:models/enum/icon_type.dart';
import 'package:ui/models/enum/icon_type.dart';

extension IconTypeEnumExt on IconType {
  IconTypeEnum get asModel => IconTypeEnum.values[index];
}

extension IconTypeExt on IconTypeEnum? {
  IconType? get asUI => this != null ? IconType.values[this!.index] : null;
}
