import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

enum NotificationType {
  oneTime,
  recurring;

  String get localizedName {
    switch (this) {
      case NotificationType.oneTime:
        return S.current.oneTime;
      case NotificationType.recurring:
        return S.current.recurring;
    }
  }

  Widget get icon {
    switch (this) {
      case NotificationType.oneTime:
        return const Icon(Icons.timer_outlined);
      case NotificationType.recurring:
        return const Icon(Icons.history);
    }
  }
}
