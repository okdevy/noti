import 'package:flutter/material.dart';

import '../../generated/assets.gen.dart';
import '../../generated/colors.gen.dart';

enum IconType {
  business,
  list,
  personCheck,
  notification,
  error,
  none;

  Widget get icon {
    switch (this) {
      case IconType.business:
        return const Icon(Icons.business);
      case IconType.list:
        return const Icon(Icons.list);
      case IconType.personCheck:
        return Assets.icons.icPersonCheck.svg(width: 24, height: 24);
      case IconType.notification:
        return const Icon(Icons.notification_important);
      case IconType.error:
        return const Icon(Icons.error);
      case IconType.none:
        return const Icon(
          Icons.image,
          color: ColorName.colon,
          size: 32,
        );
    }
  }
}
