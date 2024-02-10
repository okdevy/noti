import 'package:async_redux/async_redux.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';

class RetrieveAllNotificationsAction extends ReduxAction<AppState> {
  RetrieveAllNotificationsAction({required this.value});

  final String value;

  @override
  Future<AppState> reduce() async {
    final result = await getIsar.getAll();

    return state.copyWith();
  }
}
