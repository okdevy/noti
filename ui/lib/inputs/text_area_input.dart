import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_text_input.dart';

class TextAreaInput extends BaseTextInput {
  TextAreaInput({
    required super.vm,
    required super.labelText,
    int maxLength = 1000,
    super.helperText,
    super.key,
  }) : super(
          keyboardType: TextInputType.multiline,
          filled: true,
          maxLines: null,
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          textInputAction: TextInputAction.done,
          inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
        );
}
