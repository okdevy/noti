import 'package:flutter/material.dart';

import '../../generated/assets.gen.dart';
import '../../generated/colors.gen.dart';

enum IconType {
  none,
  business,
  list,
  personCheck,
  notification,
  error;

  Widget get icon {
    switch (this) {
      case IconType.none:
        return const Icon(
          Icons.image,
          color: ColorName.colon,
        );
      case IconType.business:
        return const Icon(Icons.business);
      case IconType.list:
        return const Icon(Icons.list);
      case IconType.personCheck:
        return Assets.icons.icPersonCheck.svg();
      case IconType.notification:
        return const Icon(Icons.notification_important);
      case IconType.error:
        return const Icon(Icons.error);
    }
  }
}
