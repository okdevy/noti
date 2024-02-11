import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/one_time_view/actions/retrieve_all_notifications_action.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/home_page.dart';

import 'one_time_view_connector.dart';
import 'recurring_view_connector.dart';

class HomePageConnector extends StatelessWidget {
  const HomePageConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        onInit: (store) async =>
            store.dispatchAsync(RetrieveAllNotificationsAction()),
        builder: (context, vm) => HomePage(
          isWaiting: vm.isWaiting,
          oneTime: const OneTimeViewConnector(),
          recurring: const RecurringViewConnector(),
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends VmFactory<AppState, HomePageConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() => _Vm(
        isWaiting: false,
      );
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.isWaiting,
  });

  final bool isWaiting;

  @override
  List<Object?> get props => [isWaiting];
}
