import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../one_time_view_selectors.dart';

class AddOneTimeIdAction extends ReduxAction<AppState> {
  AddOneTimeIdAction({
    required this.oneTimeId,
  });

  final int oneTimeId;

  @override
  AppState reduce() {
    final view = selectOneTimeView(state);
    final newView = view.add(oneTimeId);

    return state.copyWith.oneTimeView(view: newView);
  }
}
