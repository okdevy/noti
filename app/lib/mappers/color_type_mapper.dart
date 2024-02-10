import 'package:models/enum/color_type.dart';
import 'package:ui/models/enum/color_type.dart';

extension ColorTypeExt on ColorType? {
  ColorTypeEnum? get asModel =>
      this != null ? ColorTypeEnum.values[this!.index] : null;
}

extension ColorTypeEnumExt on ColorTypeEnum {
  ColorType get asUI => ColorType.values[index];
}
