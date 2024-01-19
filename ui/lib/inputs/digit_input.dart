import 'package:flutter/services.dart';

import 'base_digit_input.dart';

class DigitInput extends BaseDigitInput {
  DigitInput({
    required super.vm,
    required super.controller,
    required super.focusNode,
    required super.nextFocusNode,
    super.key,
  }) : super(
          keyboardType: TextInputType.number,
          inputFormatters: [LengthLimitingTextInputFormatter(1)],
        );
}
