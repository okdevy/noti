import 'package:equatable/equatable.dart';

import 'date_formats.dart';

class FormattedDate extends Equatable {
  const FormattedDate._(this.dt, this.formatted);

  FormattedDate.hours(DateTime? dt) : this._(dt, toHours(dt));
  FormattedDate.dayMonthYear(DateTime? dt) : this._(dt, toDayMonthYear(dt));
  FormattedDate.dayMonthYearTimeAt(DateTime? dt)
      : this._(dt, toDayMonthYearTimeAt(dt));
  FormattedDate.dayMonth(DateTime? dt) : this._(dt, toDayMonth(dt));
  FormattedDate.dayMonthTime(DateTime? dt) : this._(dt, toDayMonthTime(dt));
  FormattedDate.month(DateTime dt) : this._(dt, toMonth(dt));
  FormattedDate.week(DateTime? from, DateTime? to)
      : this._(from, toWeek(from, to));
  FormattedDate.timeTo(DateTime? dt) : this._(dt, timeTo(dt));

  final DateTime? dt;
  final String? formatted;

  @override
  List<Object?> get props => [dt, formatted];
}
