import 'package:async_redux/async_redux.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../../app_state.dart';

class AddOneTimeIdsAction extends ReduxAction<AppState> {
  AddOneTimeIdsAction({
    required this.view,
  });

  final IList<int> view;

  @override
  AppState reduce() => state.copyWith.oneTimeView(view: view);
}
