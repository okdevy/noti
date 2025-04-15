import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/one_time_view/one_time_view_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/enum/recurring_view_type.dart';
import 'package:ui/views/recurring_view.dart';

import '../navigation/route_params.dart';
import '../navigation/routes.dart';

class RecurringViewConnector extends StatelessWidget {
  const RecurringViewConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        builder: (context, vm) => RecurringView(
          vm: vm.recurring,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends VmFactory<AppState, RecurringViewConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    final isWaiting = selectOneTimeViewIsWaiting(state);

    return _Vm(
      recurring: RecurringViewVm(
        isWaiting: isWaiting,
        onPressedOneMinute: () async {
          print('object');
          await _resolveNavigation(RecurringType.oneMinute);
        },
        onPressedTwoMinutes: () async =>
            _resolveNavigation(RecurringType.twoMinutes),
        onPressedThreeMinutes: () async =>
            _resolveNavigation(RecurringType.threeMinutes),
      ),
    );
  }

  Future<void> _resolveNavigation(RecurringType type) async {
    final params = ListViewRouteParams(pageType: type).params;
    await router.pushNamed(Routes.listPage, pathParameters: params);
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.recurring,
  });

  final RecurringViewVm recurring;

  @override
  List<Object?> get props => [recurring];
}
