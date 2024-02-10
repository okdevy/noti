import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';

part 'one_time_notifications_state.freezed.dart';

@freezed
class OneTimeNotificationsState with _$OneTimeNotificationsState {
  const factory OneTimeNotificationsState({
    @Default(IMapConst<int, OneTimeNotification>({}))
    IMap<int, OneTimeNotification> table,
    @Default(IListConst<int>([])) IList<int> view,
  }) = _OneTimeNotificationsState;
}

enum OneTimeNotificationsWaiting {
  wait,
}

@freezed
class OneTimeNotification with _$OneTimeNotification {
  const factory OneTimeNotification({
    required int id,
    required DateTime? time,
    required String message,
    IconTypeEnum? icon,
    ColorTypeEnum? color,
  }) = _OneTimeNotification;
}
