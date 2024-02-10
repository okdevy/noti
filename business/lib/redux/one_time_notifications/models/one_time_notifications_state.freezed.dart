// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_time_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneTimeNotificationsState {
  IMap<int, OneTimeNotification> get table =>
      throw _privateConstructorUsedError;
  IList<int> get view => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneTimeNotificationsStateCopyWith<OneTimeNotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTimeNotificationsStateCopyWith<$Res> {
  factory $OneTimeNotificationsStateCopyWith(OneTimeNotificationsState value,
          $Res Function(OneTimeNotificationsState) then) =
      _$OneTimeNotificationsStateCopyWithImpl<$Res, OneTimeNotificationsState>;
  @useResult
  $Res call({IMap<int, OneTimeNotification> table, IList<int> view});
}

/// @nodoc
class _$OneTimeNotificationsStateCopyWithImpl<$Res,
        $Val extends OneTimeNotificationsState>
    implements $OneTimeNotificationsStateCopyWith<$Res> {
  _$OneTimeNotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
    Object? view = null,
  }) {
    return _then(_value.copyWith(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as IMap<int, OneTimeNotification>,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneTimeNotificationsStateImplCopyWith<$Res>
    implements $OneTimeNotificationsStateCopyWith<$Res> {
  factory _$$OneTimeNotificationsStateImplCopyWith(
          _$OneTimeNotificationsStateImpl value,
          $Res Function(_$OneTimeNotificationsStateImpl) then) =
      __$$OneTimeNotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<int, OneTimeNotification> table, IList<int> view});
}

/// @nodoc
class __$$OneTimeNotificationsStateImplCopyWithImpl<$Res>
    extends _$OneTimeNotificationsStateCopyWithImpl<$Res,
        _$OneTimeNotificationsStateImpl>
    implements _$$OneTimeNotificationsStateImplCopyWith<$Res> {
  __$$OneTimeNotificationsStateImplCopyWithImpl(
      _$OneTimeNotificationsStateImpl _value,
      $Res Function(_$OneTimeNotificationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
    Object? view = null,
  }) {
    return _then(_$OneTimeNotificationsStateImpl(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as IMap<int, OneTimeNotification>,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ));
  }
}

/// @nodoc

class _$OneTimeNotificationsStateImpl implements _OneTimeNotificationsState {
  const _$OneTimeNotificationsStateImpl(
      {this.table = const IMapConst<int, OneTimeNotification>({}),
      this.view = const IListConst<int>([])});

  @override
  @JsonKey()
  final IMap<int, OneTimeNotification> table;
  @override
  @JsonKey()
  final IList<int> view;

  @override
  String toString() {
    return 'OneTimeNotificationsState(table: $table, view: $view)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneTimeNotificationsStateImpl &&
            (identical(other.table, table) || other.table == table) &&
            const DeepCollectionEquality().equals(other.view, view));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, table, const DeepCollectionEquality().hash(view));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneTimeNotificationsStateImplCopyWith<_$OneTimeNotificationsStateImpl>
      get copyWith => __$$OneTimeNotificationsStateImplCopyWithImpl<
          _$OneTimeNotificationsStateImpl>(this, _$identity);
}

abstract class _OneTimeNotificationsState implements OneTimeNotificationsState {
  const factory _OneTimeNotificationsState(
      {final IMap<int, OneTimeNotification> table,
      final IList<int> view}) = _$OneTimeNotificationsStateImpl;

  @override
  IMap<int, OneTimeNotification> get table;
  @override
  IList<int> get view;
  @override
  @JsonKey(ignore: true)
  _$$OneTimeNotificationsStateImplCopyWith<_$OneTimeNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OneTimeNotification {
  int get id => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  IconTypeEnum? get icon => throw _privateConstructorUsedError;
  ColorTypeEnum? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneTimeNotificationCopyWith<OneTimeNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTimeNotificationCopyWith<$Res> {
  factory $OneTimeNotificationCopyWith(
          OneTimeNotification value, $Res Function(OneTimeNotification) then) =
      _$OneTimeNotificationCopyWithImpl<$Res, OneTimeNotification>;
  @useResult
  $Res call(
      {int id,
      DateTime? time,
      String message,
      IconTypeEnum? icon,
      ColorTypeEnum? color});
}

/// @nodoc
class _$OneTimeNotificationCopyWithImpl<$Res, $Val extends OneTimeNotification>
    implements $OneTimeNotificationCopyWith<$Res> {
  _$OneTimeNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = freezed,
    Object? message = null,
    Object? icon = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconTypeEnum?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorTypeEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneTimeNotificationImplCopyWith<$Res>
    implements $OneTimeNotificationCopyWith<$Res> {
  factory _$$OneTimeNotificationImplCopyWith(_$OneTimeNotificationImpl value,
          $Res Function(_$OneTimeNotificationImpl) then) =
      __$$OneTimeNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? time,
      String message,
      IconTypeEnum? icon,
      ColorTypeEnum? color});
}

/// @nodoc
class __$$OneTimeNotificationImplCopyWithImpl<$Res>
    extends _$OneTimeNotificationCopyWithImpl<$Res, _$OneTimeNotificationImpl>
    implements _$$OneTimeNotificationImplCopyWith<$Res> {
  __$$OneTimeNotificationImplCopyWithImpl(_$OneTimeNotificationImpl _value,
      $Res Function(_$OneTimeNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = freezed,
    Object? message = null,
    Object? icon = freezed,
    Object? color = freezed,
  }) {
    return _then(_$OneTimeNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconTypeEnum?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorTypeEnum?,
    ));
  }
}

/// @nodoc

class _$OneTimeNotificationImpl implements _OneTimeNotification {
  const _$OneTimeNotificationImpl(
      {required this.id,
      required this.time,
      required this.message,
      this.icon,
      this.color});

  @override
  final int id;
  @override
  final DateTime? time;
  @override
  final String message;
  @override
  final IconTypeEnum? icon;
  @override
  final ColorTypeEnum? color;

  @override
  String toString() {
    return 'OneTimeNotification(id: $id, time: $time, message: $message, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneTimeNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, time, message, icon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneTimeNotificationImplCopyWith<_$OneTimeNotificationImpl> get copyWith =>
      __$$OneTimeNotificationImplCopyWithImpl<_$OneTimeNotificationImpl>(
          this, _$identity);
}

abstract class _OneTimeNotification implements OneTimeNotification {
  const factory _OneTimeNotification(
      {required final int id,
      required final DateTime? time,
      required final String message,
      final IconTypeEnum? icon,
      final ColorTypeEnum? color}) = _$OneTimeNotificationImpl;

  @override
  int get id;
  @override
  DateTime? get time;
  @override
  String get message;
  @override
  IconTypeEnum? get icon;
  @override
  ColorTypeEnum? get color;
  @override
  @JsonKey(ignore: true)
  _$$OneTimeNotificationImplCopyWith<_$OneTimeNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
