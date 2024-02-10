import 'package:flutter/material.dart';

import '../generated/colors.gen.dart';
import '../inputs/digit_input.dart';
import '../models/value_changed.dart';

class DigitsInputRow extends StatefulWidget {
  const DigitsInputRow({
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    this.mainAxisAlignment = MainAxisAlignment.center,
    super.key,
  });

  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<DigitsInputRow> createState() => _DigitsInputRowState();
}

class _DigitsInputRowState extends State<DigitsInputRow> {
  late final _firstController = TextEditingController(text: widget.first.value);
  late final _secondController =
      TextEditingController(text: widget.second.value);
  late final _thirdController = TextEditingController(text: widget.third.value);
  late final _forthController = TextEditingController(text: widget.forth.value);
  final _firstFocusNode = FocusNode();
  final _secondFocusNode = FocusNode();
  final _thirdFocusNode = FocusNode();
  final _forthFocusNode = FocusNode();

  @override
  void didUpdateWidget(covariant DigitsInputRow oldWidget) {
    if (widget.first.value != oldWidget.first.value &&
        widget.first.value!.isEmpty) {
      _firstController.text = widget.first.value ?? '';
    }
    if (widget.second.value != oldWidget.second.value) {
      _secondController.text = widget.second.value ?? '';
    }
    if (widget.third.value != oldWidget.third.value) {
      _thirdController.text = widget.third.value ?? '';
    }
    if (widget.forth.value != oldWidget.forth.value) {
      _forthController.text = widget.forth.value ?? '';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _forthController.dispose();
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _forthFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: widget.mainAxisAlignment,
        children: [
          DigitInput(
            vm: widget.first,
            controller: _firstController,
            focusNode: _firstFocusNode,
            nextFocusNode: _secondFocusNode,
          ),
          const SizedBox(width: 12),
          DigitInput(
            vm: widget.second,
            controller: _secondController,
            focusNode: _secondFocusNode,
            nextFocusNode: _thirdFocusNode,
          ),
          const SizedBox(width: 11),
          const Text(
            ':',
            style: TextStyle(
              color: ColorName.colon,
              fontSize: 32,
              height: 48 / 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 11),
          DigitInput(
            vm: widget.third,
            controller: _thirdController,
            focusNode: _thirdFocusNode,
            nextFocusNode: _forthFocusNode,
          ),
          const SizedBox(width: 12),
          DigitInput(
            vm: widget.forth,
            controller: _forthController,
            focusNode: _forthFocusNode,
            nextFocusNode: null,
          ),
        ],
      );
}
