import 'package:equatable/equatable.dart';

import 'date_formats.dart';

class FormattedDate extends Equatable {
  const FormattedDate._(this.dt, this.formatted);

  FormattedDate.hours(DateTime? dt) : this._(dt, toHours(dt));

  final DateTime? dt;
  final String? formatted;

  @override
  List<Object?> get props => [dt, formatted];
}
