import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/log_in/actions/init_log_in_action.dart';
import 'package:business/redux/log_in/actions/log_in_with_email_action.dart';
import 'package:business/redux/log_in/actions/set_first_action.dart';
import 'package:business/redux/log_in/actions/set_fourth_action.dart';
import 'package:business/redux/log_in/actions/set_second_action.dart';
import 'package:business/redux/log_in/actions/set_third_action.dart';
import 'package:business/redux/log_in/log_in_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/value_changed.dart';
import 'package:ui/pages/log_in_by_time_page.dart';

class LogInPageConnector extends StatelessWidget {
  const LogInPageConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        onInit: (store) => store.dispatchSync(InitLogInAction()),
        builder: (context, vm) => LogInByTimePage(
          first: vm.first,
          second: vm.second,
          third: vm.third,
          forth: vm.forth,
          time: vm.time,
          isTimeWrong: vm.isTimeWrong,
          onPressedLogIn: vm.onPressedLogIn,
        ),
      );
}

/// Factory that creates a view-model  for the StoreConnector.
class _Factory extends VmFactory<AppState, LogInPageConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    final first = selectLogInFirst(state);
    final second = selectLogInSecond(state);
    final third = selectLogInThird(state);
    final fourth = selectLogInFourth(state);
    final time = selectLogInTime(state);
    final isTimeWrong = selectLogInIsTimeWrong(state);
    final formIsValid = selectLogInDataIsSet(state);

    return _Vm(
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
      time: time,
      isTimeWrong: isTimeWrong,
      onPressedLogIn: formIsValid
          ? () async => dispatchAsync(LogInWithEmailAction())
          : null,
    );
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    required this.time,
    required this.isTimeWrong,
    required this.onPressedLogIn,
  });

  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final String time;
  final bool isTimeWrong;
  final VoidCallback? onPressedLogIn;

  @override
  List<Object?> get props => [
        first,
        second,
        third,
        forth,
        time,
        isTimeWrong,
        onPressedLogIn == null,
      ];
}
