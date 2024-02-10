import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/notification_data.dart';

class IsarService {
  IsarService({
    required Isar db,
  }) : _db = db;

  late final Isar _db;

  static Future<Isar> openDatabase() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return Isar.open(
        name: 'notifications',
        [NotificationDataSchema],
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<int> writeTxn({
    required NotificationData data,
  }) async {
    final result = await _db.writeTxn(() => _db.notificationDatas.put(data));

    return result;
  }
}
