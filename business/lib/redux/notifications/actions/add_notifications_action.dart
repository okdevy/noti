import 'package:async_redux/async_redux.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:models/enum/notification_type.dart';

import '../../app_state.dart';
import '../../one_time_view/actions/add_one_time_ids_action.dart';
import '../models/notifications_state.dart';
import '../notifications_selectors.dart';

class AddNotificationsAction extends ReduxAction<AppState> {
  AddNotificationsAction({
    required this.notifications,
  });

  final IList<Notification> notifications;

  @override
  AppState reduce() {
    final byId = IMap<int, Notification>.fromValues(
      values: notifications,
      keyMapper: (e) => e.id,
    );

    final table = selectNotificationsTable(state);
    final updatedTable = table.addAll(byId);
    final oneTimeView = updatedTable
        .where((key, value) => value.type == NotificationTypeEnum.oneTime)
        .keys
        .toIList();

    // TODO: add recurring views

    dispatchSync(AddOneTimeIdsAction(view: oneTimeView));

    return state.copyWith.notifications(table: updatedTable);
  }
}
