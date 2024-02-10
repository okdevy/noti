import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/create_one_time_notification/actions/set_color_action.dart';
import 'package:business/redux/create_one_time_notification/actions/set_first_action.dart';
import 'package:business/redux/create_one_time_notification/actions/set_fourth_action.dart';
import 'package:business/redux/create_one_time_notification/actions/set_icon_action.dart';
import 'package:business/redux/create_one_time_notification/actions/set_second_action.dart';
import 'package:business/redux/create_one_time_notification/actions/set_third_action.dart';
import 'package:business/redux/create_one_time_notification/create_one_time_notification_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/enum/color_type.dart';
import 'package:ui/models/enum/icon_type.dart';
import 'package:ui/models/value_changed.dart';
import 'package:ui/pages/create_notification_page.dart';

class CreateOneTimeNotificationPageConnector extends StatelessWidget {
  const CreateOneTimeNotificationPageConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        builder: (context, vm) => CreateNotificationPage(
          message: vm.message,
          first: vm.first,
          second: vm.second,
          third: vm.third,
          forth: vm.forth,
          color: vm.color,
          icon: vm.icon,
          onPressedConfirm: vm.onPressedConfirm,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory
    extends VmFactory<AppState, CreateOneTimeNotificationPageConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    final first = selectCreateOneTimeNotificationFirst(state);
    final second = selectCreateOneTimeNotificationSecond(state);
    final third = selectCreateOneTimeNotificationThird(state);
    final fourth = selectCreateOneTimeNotificationFourth(state);
    final message = selectCreateOneTimeNotificationMessage(state);
    final iconIndex = selectCreateOneTimeNotificationIconIndex(state);
    final colorIndex = selectCreateOneTimeNotificationColorIndex(state);

    return _Vm(
      message: ValueChangedWithErrorVm<String?>(
        value: message,
        onChanged: (value) {},
      ),
      first: ValueChangedVm(
        value: first,
        onChanged: (value) => dispatchSync(SetFirstAction(value!)),
      ),
      second: ValueChangedVm(
        value: second,
        onChanged: (value) => dispatchSync(SetSecondAction(value!)),
      ),
      third: ValueChangedVm(
        value: third,
        onChanged: (value) => dispatchSync(SetThirdAction(value!)),
      ),
      forth: ValueChangedVm(
        value: fourth,
        onChanged: (value) => dispatchSync(SetFourthAction(value!)),
      ),
      icon: ValueChangedVm(
        value: iconIndex != null ? IconType.values[iconIndex] : null,
        onChanged: (value) =>
            dispatchSync(SetIconAction(iconIndex: value?.index)),
      ),
      color: ValueChangedVm(
        value: colorIndex != null ? ColorType.values[colorIndex] : null,
        onChanged: (value) =>
            dispatchSync(SetColorAction(colorIndex: value?.index)),
      ),
      onPressedConfirm: (),
    );
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.message,
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    required this.color,
    required this.icon,
    required this.onPressedConfirm,
  });

  final ValueChangedWithErrorVm<String?> message;
  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final ValueChangedVm<ColorType?> color;
  final ValueChangedVm<IconType?> icon;
  final VoidCallback? onPressedConfirm;

  @override
  List<Object?> get props => [
        message,
        first,
        second,
        third,
        forth,
        icon,
        color,
        onPressedConfirm == null,
      ];
}
