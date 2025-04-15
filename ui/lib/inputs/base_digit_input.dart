import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/services.dart';

import '../generated/colors.gen.dart';
import '../models/value_changed.dart';

class BaseDigitInput extends StatefulWidget {
  const BaseDigitInput({
    required this.vm,
    required this.controller,
    required this.focusNode,
    required this.nextFocusNode,
    this.autofocus = false,
    this.keyboardType,
    this.inputFormatters,
    this.autofillHints,
    this.floatingLabelBehavior,
    this.textInputAction,
    this.onSubmitted,
    super.key,
  });

  final ValueChangedVm<String?> vm;
  final TextEditingController controller;
  final bool autofocus;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final List<TextInputFormatter>? inputFormatters;
  final List<String>? autofillHints;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextInputAction? textInputAction;
  final void Function(String value)? onSubmitted;

  @override
  BaseDigitInputState createState() => BaseDigitInputState();
}

class BaseDigitInputState extends State<BaseDigitInput> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_controllerChangeListener);

    if (widget.vm.value != null) {
      widget.controller.text = widget.vm.value!;
    }
  }

  void _controllerChangeListener() {
    final text = widget.controller.text;
    final skip = widget.vm.value == null && text.isEmpty;
    if (widget.vm.value != text && !skip) {
      widget.vm.onChangedSync(text);

      if (widget.nextFocusNode != null) {
        widget.nextFocusNode!.requestFocus();
      }
    }
  }

  @override
  void didUpdateWidget(BaseDigitInput oldWidget) {
    final text = widget.vm.value ?? '';
    if (widget.controller.text != text) {
      widget.controller.value = TextEditingValue(
        text: text,
        selection: TextSelection.fromPosition(
          TextPosition(offset: text.length),
        ),
      );
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_controllerChangeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(8));

    return SizedBox(
      width: 44,
      height: 48,
      child: TextField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        autofocus: widget.autofocus,
        inputFormatters: widget.inputFormatters,
        onSubmitted: widget.onSubmitted,
        autofillHints: widget.autofillHints,
        textAlignVertical: TextAlignVertical.top,
        textAlign: TextAlign.center,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: ColorName.border),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: ColorName.border),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          focusColor: ColorName.focusedBorder,
          floatingLabelBehavior: widget.floatingLabelBehavior,
          fillColor: Colors.transparent,
          enabled: widget.vm.enabled,
        ),
        style: const TextStyle(
          color: ColorName.black,
          fontSize: 18,
          height: 24 / 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
