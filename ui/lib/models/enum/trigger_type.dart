import 'package:localization/generated/l10n.dart';

enum TriggerType {
  trigger1,
  trigger2;

  String get pageTitle => switch (this) {
        TriggerType.trigger1 => S.current.selectTrigger(1),
        TriggerType.trigger2 => S.current.selectTrigger(2),
      };
}
