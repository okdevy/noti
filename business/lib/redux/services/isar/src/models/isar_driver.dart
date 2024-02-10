import 'package:async_redux/async_redux.dart';

import '../../../../app_state.dart';
import '../isar_service.dart';

class IsarDriver implements IsarServiceDriverInterface {
  IsarDriver({required Store<AppState> store}) : _store = store;

  final Store<AppState> _store;

  @override
  void onChange() {}
}
