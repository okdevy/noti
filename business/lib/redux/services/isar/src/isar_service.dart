import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../common/services/interface.dart';
import 'models/notification_data.dart';

// ignore: one_member_abstracts
abstract class IsarServiceDriverInterface {
  void onChange();
}

class IsarService extends DisposableServiceInterface {
  IsarService({
    required Isar db,
  }) : _db = db;

  late final Isar _db;

  @override
  Future<void> dispose() async {
    super.dispose();
    await _db.close();
  }

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

  Future<List<NotificationData>> getAll() async {
    final result = await _db.notificationDatas.where().findAll();

    return result;
  }

  Future<void> delete({required int id}) async {
    await _db.writeTxn(() async {
      final result = await _db.notificationDatas.delete(id);

      return result;
    });
  }
}
