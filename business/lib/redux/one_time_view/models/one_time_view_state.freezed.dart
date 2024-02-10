// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_time_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneTimeViewState {
  IList<int> get view => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneTimeViewStateCopyWith<OneTimeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTimeViewStateCopyWith<$Res> {
  factory $OneTimeViewStateCopyWith(
          OneTimeViewState value, $Res Function(OneTimeViewState) then) =
      _$OneTimeViewStateCopyWithImpl<$Res, OneTimeViewState>;
  @useResult
  $Res call({IList<int> view});
}

/// @nodoc
class _$OneTimeViewStateCopyWithImpl<$Res, $Val extends OneTimeViewState>
    implements $OneTimeViewStateCopyWith<$Res> {
  _$OneTimeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_value.copyWith(
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneTimeViewStateImplCopyWith<$Res>
    implements $OneTimeViewStateCopyWith<$Res> {
  factory _$$OneTimeViewStateImplCopyWith(_$OneTimeViewStateImpl value,
          $Res Function(_$OneTimeViewStateImpl) then) =
      __$$OneTimeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<int> view});
}

/// @nodoc
class __$$OneTimeViewStateImplCopyWithImpl<$Res>
    extends _$OneTimeViewStateCopyWithImpl<$Res, _$OneTimeViewStateImpl>
    implements _$$OneTimeViewStateImplCopyWith<$Res> {
  __$$OneTimeViewStateImplCopyWithImpl(_$OneTimeViewStateImpl _value,
      $Res Function(_$OneTimeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_$OneTimeViewStateImpl(
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ));
  }
}

/// @nodoc

class _$OneTimeViewStateImpl implements _OneTimeViewState {
  const _$OneTimeViewStateImpl({this.view = const IListConst<int>([])});

  @override
  @JsonKey()
  final IList<int> view;

  @override
  String toString() {
    return 'OneTimeViewState(view: $view)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneTimeViewStateImpl &&
            const DeepCollectionEquality().equals(other.view, view));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(view));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneTimeViewStateImplCopyWith<_$OneTimeViewStateImpl> get copyWith =>
      __$$OneTimeViewStateImplCopyWithImpl<_$OneTimeViewStateImpl>(
          this, _$identity);
}

abstract class _OneTimeViewState implements OneTimeViewState {
  const factory _OneTimeViewState({final IList<int> view}) =
      _$OneTimeViewStateImpl;

  @override
  IList<int> get view;
  @override
  @JsonKey(ignore: true)
  _$$OneTimeViewStateImplCopyWith<_$OneTimeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
