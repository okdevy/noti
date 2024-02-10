import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../app_state.dart';

/// Returns search results view
IList<int> selectOneTimeView(AppState state) => state.oneTimeView.view;
