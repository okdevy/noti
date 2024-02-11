import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../app_state.dart';
import 'models/one_time_view_state.dart';

/// returns waiting value
bool selectOneTimeViewIsWaiting(AppState state) =>
    state.wait.isWaitingFor(OneTimeViewIsWaiting.wait);

/// Returns search results view
IList<int> selectOneTimeView(AppState state) => state.oneTimeView.view;
