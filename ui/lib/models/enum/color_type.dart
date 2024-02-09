import 'package:flutter/painting.dart';

import '../../generated/colors.gen.dart';

enum ColorType {
  noneBackground,
  peachRed,
  lemonYellow,
  lightPurple,
  lightPink;

  Color get color {
    switch (this) {
      case ColorType.noneBackground:
        return ColorName.noneBackground;
      case ColorType.peachRed:
        return ColorName.peachRed;
      case ColorType.lemonYellow:
        return ColorName.lemonYellow;
      case ColorType.lightPurple:
        return ColorName.lightPurple;
      case ColorType.lightPink:
        return ColorName.lightPink;
    }
  }
}
