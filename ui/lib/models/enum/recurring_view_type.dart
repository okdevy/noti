import 'package:localization/generated/l10n.dart';

enum RecurringType {
  oneMinute,
  twoMinutes,
  threeMinutes;

  String get label {
    switch (this) {
      case RecurringType.oneMinute:
        return S.current.oneMinute;
      case RecurringType.twoMinutes:
        return S.current.twoMinutes;
      case RecurringType.threeMinutes:
        return S.current.threeMinutes;
    }
  }
}
