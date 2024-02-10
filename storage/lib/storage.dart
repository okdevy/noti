/// Storage library
library storage;

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'src/models/biometric_data.dart';

Future<void> setupStorage() async {
  final dir = await getApplicationDocumentsDirectory();
  Hive
    ..init(dir.path)
    ..registerAdapter(BiometricDataAdapter());
}
