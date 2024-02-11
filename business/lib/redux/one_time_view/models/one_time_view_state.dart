import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_time_view_state.freezed.dart';

@freezed
class OneTimeViewState with _$OneTimeViewState {
  const factory OneTimeViewState({
    @Default(IListConst<int>([])) IList<int> view,
  }) = _OneTimeViewState;
}

enum OneTimeViewIsWaiting {
  wait,
}
