import '../../redux/app_state.dart';
import 'models/log_in_state.dart';

/// Returns waiting value
bool selectLogInWaiting(AppState state) =>
    state.wait.isWaitingFor(LogInWaiting.wait);

/// Returns [String] first value
String? selectLogInFirst(AppState state) => state.logIn.first;

/// Returns [String] second value
String? selectLogInSecond(AppState state) => state.logIn.second;

/// Returns [String] third value
String? selectLogInThird(AppState state) => state.logIn.third;

/// Returns [String] fourth value
String? selectLogInFourth(AppState state) => state.logIn.fourth;

/// Returns [String] time value
String selectLogInTime(AppState state) => state.logIn.time!;

/// Returns [bool] isTimeWrong value
bool selectLogInIsTimeWrong(AppState state) => state.logIn.isTimeWrong;

/// Returns true if email & password is set
bool selectLogInDataIsSet(AppState state) {
  final first = selectLogInFirst(state) ?? '';
  final second = selectLogInSecond(state) ?? '';
  final third = selectLogInThird(state) ?? '';
  final fourth = selectLogInFourth(state) ?? '';

  return first.isNotEmpty &&
      second.isNotEmpty &&
      third.isNotEmpty &&
      fourth.isNotEmpty;
}
