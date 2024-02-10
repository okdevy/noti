import 'package:intl/intl.dart' as intl;

String toHours(DateTime? dt) {
  if (dt == null) {
    return '';
  }

  return intl.jm().format(dt);
}
