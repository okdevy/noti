import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/notifications/notifications_selectors.dart';
import 'package:business/redux/one_time_view/actions/delete_one_time_action.dart';
import 'package:business/redux/one_time_view/one_time_view_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:models/enum/icon_type.dart';
import 'package:ui/cards/notification_card.dart';
import 'package:ui/models/formatted_date.dart';
import 'package:ui/views/one_time_view.dart';

import '../mappers/icon_type_mapper.dart';
import '../navigation/routes.dart';

class ListViewConnector extends StatelessWidget {
  const ListViewConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        builder: (context, vm) => OneTimeView(
          oneTimeView: vm.oneTimeView,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends VmFactory<AppState, ListViewConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    final isWaiting = selectOneTimeViewIsWaiting(state);
    final view = selectOneTimeView(state).reversed;

    return _Vm(
      oneTimeView: OneTimeViewVm(
        isWaiting: isWaiting,
        items: view.map(
          (id) {
            final notification = selectNotificationsById(state, id: id);

            return NotificationCardVm(
              time: FormattedDate.hours(notification.time),
              message: notification.message,
              iconType: notification.icon == IconTypeEnum.none
                  ? null
                  : notification.icon.asUI,
              onPressedDelete: () async =>
                  dispatchAsync(DeleteOneTimeAction(notificationId: id)),
            );
          },
        ).toList(growable: false),
        onPressedAdd: () async =>
            router.pushNamed(Routes.createOneTimeNotification),
      ),
    );
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.oneTimeView,
  });

  final OneTimeViewVm oneTimeView;

  @override
  List<Object?> get props => [oneTimeView];
}
