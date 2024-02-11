import 'package:intl/intl.dart';

String toHours(DateTime? dt) {
  if (dt == null) {
    return '';
  }

  return DateFormat.Hm().format(dt);
}
