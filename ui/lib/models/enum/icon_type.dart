import 'package:flutter/material.dart';

import '../../generated/colors.gen.dart';

enum IconType {
  business,
  list,
  personCheck,
  notification,
  error;

  Widget? get icon40 {
    const color = ColorName.primary;
    const size = 40.0;

    switch (this) {
      case IconType.business:
        return const Icon(
          Icons.business_center_outlined,
          color: color,
          size: size,
        );
      case IconType.list:
        return const Icon(
          Icons.list_alt_outlined,
          color: color,
          size: size,
        );
      case IconType.personCheck:
        return const Icon(
          Icons.person_add_alt_outlined,
          color: color,
          size: size,
        );
      case IconType.notification:
        return const Icon(
          Icons.notifications_active_outlined,
          color: color,
          size: size,
        );
      case IconType.error:
        return const Icon(
          Icons.error_outline_rounded,
          color: color,
          size: size,
        );
    }
  }

  Widget? get icon20 {
    const color = ColorName.primary;
    const size = 24.0;

    switch (this) {
      case IconType.business:
        return const Icon(
          Icons.business_center_outlined,
          color: color,
          size: size,
        );
      case IconType.list:
        return const Icon(
          Icons.list_alt_outlined,
          color: color,
          size: size,
        );
      case IconType.personCheck:
        return const Icon(
          Icons.person_add_alt_outlined,
          color: color,
          size: size,
        );
      case IconType.notification:
        return const Icon(
          Icons.notifications_active_outlined,
          color: color,
          size: size,
        );
      case IconType.error:
        return const Icon(
          Icons.error_outline_rounded,
          color: color,
          size: size,
        );
    }
  }
}
