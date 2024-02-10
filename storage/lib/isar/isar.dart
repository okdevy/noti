import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'src/models/notification_data.dart';

Future<void> setup() async {
  final dir = await getApplicationDocumentsDirectory();
  await Isar.open(
    [NotificationDataSchema],
    directory: dir.path,
  );
}
