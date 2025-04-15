import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/create_one_time_state.dart';

class CleanUpCreateOneTimeAction extends ReduxAction<AppState> {
  @override
  AppState reduce() =>
      state.copyWith(createOneTime: const CreateOneTimeState());
}
