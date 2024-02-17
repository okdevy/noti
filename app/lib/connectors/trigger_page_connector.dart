import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/enum/trigger_type.dart';
import 'package:ui/pages/trigger_page.dart';
import 'package:ui/views/foldable_nested_list.dart';

class TriggerPageConnector extends StatelessWidget {
  const TriggerPageConnector({
    required this.triggerType,
    super.key,
  });

  final TriggerType triggerType;

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        builder: (context, vm) => TriggerPage(
          triggerType: triggerType,
          list: vm.list,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends VmFactory<AppState, TriggerPageConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() => _Vm(
        list: FoldingNestedListVm(onPressed: () {}),
      );
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.list,
  });

  final FoldingNestedListVm list;

  @override
  List<Object?> get props => [list];
}
