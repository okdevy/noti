import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'connectivity/models/connectivity_state.dart';
import 'create_one_time/models/create_one_time_state.dart';
import 'forgot_password/models/forgot_password_state.dart';
import 'log_in/models/log_in_state.dart';
import 'notifications/models/notifications_state.dart';
import 'one_time_view/models/one_time_view_state.dart';
import 'registration/models/registration_state.dart';
import 'reset_password/models/reset_password_state.dart';
import 'session/models/session_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required Wait wait,
    required ConnectivityState connectivity,
    required LogInState logIn,
    required RegistrationState registration,
    required ForgotPasswordState forgotPassword,
    required ResetPasswordState resetPassword,
    required SessionState session,
    required NotificationsState notifications,
    required CreateOneTimeState createOneTime,
    required OneTimeViewState oneTimeView,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        wait: Wait.empty,
        connectivity: ConnectivityState(),
        logIn: LogInState(),
        registration: RegistrationState(),
        forgotPassword: ForgotPasswordState(),
        resetPassword: ResetPasswordState(),
        session: SessionState(),
        notifications: NotificationsState(),
        createOneTime: CreateOneTimeState(),
        oneTimeView: OneTimeViewState(),
      );
}
