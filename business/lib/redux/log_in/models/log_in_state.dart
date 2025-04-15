import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_state.freezed.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    String? first,
    String? second,
    String? third,
    String? fourth,
    String? time,
    @Default(false) bool isTimeWrong,
  }) = _LogInState;
}

enum LogInWaiting { wait }
