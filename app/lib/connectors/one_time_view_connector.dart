import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/one_time_notifications/one_time_notifications_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/cards/notification_card.dart';
import 'package:ui/models/enum/icon_type.dart';
import 'package:ui/views/one_time_view.dart';

import '../navigation/routes.dart';

class OneTimeViewConnector extends StatelessWidget {
  const OneTimeViewConnector({
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
class _Factory extends VmFactory<AppState, OneTimeViewConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    final notifications = selectOneTimeNotificationsTable(state);

    return _Vm(
      oneTimeView: OneTimeViewVm(
        items: notifications.values
            .map(
              (notification) => NotificationCardVm(
                time: notification.time != null
                    ? TimeOfDay.fromDateTime(notification.time!)
                    : null,
                message: notification.message,
                iconType: notification.icon != null
                    ? IconType.values[notification.icon!]
                    : null,
              ),
            )
            .toList(growable: false),
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
