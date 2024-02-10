import 'package:models/enum/icon_type.dart';
import 'package:ui/models/enum/icon_type.dart';

extension IconTypeExt on IconType? {
  IconTypeEnum? get asModel =>
      this != null ? IconTypeEnum.values[this!.index] : null;
}

extension IconTypeEnumExt on IconTypeEnum? {
  IconType? get asUI => this != null ? IconType.values[this!.index] : null;
}
