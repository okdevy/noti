// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  Wait get wait => throw _privateConstructorUsedError;
  ConnectivityState get connectivity => throw _privateConstructorUsedError;
  LogInState get logIn => throw _privateConstructorUsedError;
  RegistrationState get registration => throw _privateConstructorUsedError;
  ForgotPasswordState get forgotPassword => throw _privateConstructorUsedError;
  ResetPasswordState get resetPassword => throw _privateConstructorUsedError;
  SessionState get session => throw _privateConstructorUsedError;
  NotificationsState get notifications => throw _privateConstructorUsedError;
  CreateOneTimeState get createOneTime => throw _privateConstructorUsedError;
  OneTimeViewState get oneTimeView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {Wait wait,
      ConnectivityState connectivity,
      LogInState logIn,
      RegistrationState registration,
      ForgotPasswordState forgotPassword,
      ResetPasswordState resetPassword,
      SessionState session,
      NotificationsState notifications,
      CreateOneTimeState createOneTime,
      OneTimeViewState oneTimeView});

  $ConnectivityStateCopyWith<$Res> get connectivity;
  $LogInStateCopyWith<$Res> get logIn;
  $RegistrationStateCopyWith<$Res> get registration;
  $ForgotPasswordStateCopyWith<$Res> get forgotPassword;
  $ResetPasswordStateCopyWith<$Res> get resetPassword;
  $SessionStateCopyWith<$Res> get session;
  $NotificationsStateCopyWith<$Res> get notifications;
  $CreateOneTimeStateCopyWith<$Res> get createOneTime;
  $OneTimeViewStateCopyWith<$Res> get oneTimeView;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wait = null,
    Object? connectivity = null,
    Object? logIn = null,
    Object? registration = null,
    Object? forgotPassword = null,
    Object? resetPassword = null,
    Object? session = null,
    Object? notifications = null,
    Object? createOneTime = null,
    Object? oneTimeView = null,
  }) {
    return _then(_value.copyWith(
      wait: null == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait,
      connectivity: null == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as ConnectivityState,
      logIn: null == logIn
          ? _value.logIn
          : logIn // ignore: cast_nullable_to_non_nullable
              as LogInState,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as RegistrationState,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordState,
      resetPassword: null == resetPassword
          ? _value.resetPassword
          : resetPassword // ignore: cast_nullable_to_non_nullable
              as ResetPasswordState,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionState,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsState,
      createOneTime: null == createOneTime
          ? _value.createOneTime
          : createOneTime // ignore: cast_nullable_to_non_nullable
              as CreateOneTimeState,
      oneTimeView: null == oneTimeView
          ? _value.oneTimeView
          : oneTimeView // ignore: cast_nullable_to_non_nullable
              as OneTimeViewState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectivityStateCopyWith<$Res> get connectivity {
    return $ConnectivityStateCopyWith<$Res>(_value.connectivity, (value) {
      return _then(_value.copyWith(connectivity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LogInStateCopyWith<$Res> get logIn {
    return $LogInStateCopyWith<$Res>(_value.logIn, (value) {
      return _then(_value.copyWith(logIn: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationStateCopyWith<$Res> get registration {
    return $RegistrationStateCopyWith<$Res>(_value.registration, (value) {
      return _then(_value.copyWith(registration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordStateCopyWith<$Res> get forgotPassword {
    return $ForgotPasswordStateCopyWith<$Res>(_value.forgotPassword, (value) {
      return _then(_value.copyWith(forgotPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResetPasswordStateCopyWith<$Res> get resetPassword {
    return $ResetPasswordStateCopyWith<$Res>(_value.resetPassword, (value) {
      return _then(_value.copyWith(resetPassword: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionStateCopyWith<$Res> get session {
    return $SessionStateCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationsStateCopyWith<$Res> get notifications {
    return $NotificationsStateCopyWith<$Res>(_value.notifications, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateOneTimeStateCopyWith<$Res> get createOneTime {
    return $CreateOneTimeStateCopyWith<$Res>(_value.createOneTime, (value) {
      return _then(_value.copyWith(createOneTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OneTimeViewStateCopyWith<$Res> get oneTimeView {
    return $OneTimeViewStateCopyWith<$Res>(_value.oneTimeView, (value) {
      return _then(_value.copyWith(oneTimeView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Wait wait,
      ConnectivityState connectivity,
      LogInState logIn,
      RegistrationState registration,
      ForgotPasswordState forgotPassword,
      ResetPasswordState resetPassword,
      SessionState session,
      NotificationsState notifications,
      CreateOneTimeState createOneTime,
      OneTimeViewState oneTimeView});

  @override
  $ConnectivityStateCopyWith<$Res> get connectivity;
  @override
  $LogInStateCopyWith<$Res> get logIn;
  @override
  $RegistrationStateCopyWith<$Res> get registration;
  @override
  $ForgotPasswordStateCopyWith<$Res> get forgotPassword;
  @override
  $ResetPasswordStateCopyWith<$Res> get resetPassword;
  @override
  $SessionStateCopyWith<$Res> get session;
  @override
  $NotificationsStateCopyWith<$Res> get notifications;
  @override
  $CreateOneTimeStateCopyWith<$Res> get createOneTime;
  @override
  $OneTimeViewStateCopyWith<$Res> get oneTimeView;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wait = null,
    Object? connectivity = null,
    Object? logIn = null,
    Object? registration = null,
    Object? forgotPassword = null,
    Object? resetPassword = null,
    Object? session = null,
    Object? notifications = null,
    Object? createOneTime = null,
    Object? oneTimeView = null,
  }) {
    return _then(_$AppStateImpl(
      wait: null == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait,
      connectivity: null == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as ConnectivityState,
      logIn: null == logIn
          ? _value.logIn
          : logIn // ignore: cast_nullable_to_non_nullable
              as LogInState,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as RegistrationState,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordState,
      resetPassword: null == resetPassword
          ? _value.resetPassword
          : resetPassword // ignore: cast_nullable_to_non_nullable
              as ResetPasswordState,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionState,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsState,
      createOneTime: null == createOneTime
          ? _value.createOneTime
          : createOneTime // ignore: cast_nullable_to_non_nullable
              as CreateOneTimeState,
      oneTimeView: null == oneTimeView
          ? _value.oneTimeView
          : oneTimeView // ignore: cast_nullable_to_non_nullable
              as OneTimeViewState,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.wait,
      required this.connectivity,
      required this.logIn,
      required this.registration,
      required this.forgotPassword,
      required this.resetPassword,
      required this.session,
      required this.notifications,
      required this.createOneTime,
      required this.oneTimeView});

  @override
  final Wait wait;
  @override
  final ConnectivityState connectivity;
  @override
  final LogInState logIn;
  @override
  final RegistrationState registration;
  @override
  final ForgotPasswordState forgotPassword;
  @override
  final ResetPasswordState resetPassword;
  @override
  final SessionState session;
  @override
  final NotificationsState notifications;
  @override
  final CreateOneTimeState createOneTime;
  @override
  final OneTimeViewState oneTimeView;

  @override
  String toString() {
    return 'AppState(wait: $wait, connectivity: $connectivity, logIn: $logIn, registration: $registration, forgotPassword: $forgotPassword, resetPassword: $resetPassword, session: $session, notifications: $notifications, createOneTime: $createOneTime, oneTimeView: $oneTimeView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.wait, wait) || other.wait == wait) &&
            (identical(other.connectivity, connectivity) ||
                other.connectivity == connectivity) &&
            (identical(other.logIn, logIn) || other.logIn == logIn) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.forgotPassword, forgotPassword) ||
                other.forgotPassword == forgotPassword) &&
            (identical(other.resetPassword, resetPassword) ||
                other.resetPassword == resetPassword) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.createOneTime, createOneTime) ||
                other.createOneTime == createOneTime) &&
            (identical(other.oneTimeView, oneTimeView) ||
                other.oneTimeView == oneTimeView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      wait,
      connectivity,
      logIn,
      registration,
      forgotPassword,
      resetPassword,
      session,
      notifications,
      createOneTime,
      oneTimeView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final Wait wait,
      required final ConnectivityState connectivity,
      required final LogInState logIn,
      required final RegistrationState registration,
      required final ForgotPasswordState forgotPassword,
      required final ResetPasswordState resetPassword,
      required final SessionState session,
      required final NotificationsState notifications,
      required final CreateOneTimeState createOneTime,
      required final OneTimeViewState oneTimeView}) = _$AppStateImpl;

  @override
  Wait get wait;
  @override
  ConnectivityState get connectivity;
  @override
  LogInState get logIn;
  @override
  RegistrationState get registration;
  @override
  ForgotPasswordState get forgotPassword;
  @override
  ResetPasswordState get resetPassword;
  @override
  SessionState get session;
  @override
  NotificationsState get notifications;
  @override
  CreateOneTimeState get createOneTime;
  @override
  OneTimeViewState get oneTimeView;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
