import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../app_bar/base_app_bar.dart';
import '../banners/error_banner.dart';
import '../buttons/rounded_button.dart';
import '../generated/colors.gen.dart';
import '../inputs/digit_input.dart';
import '../models/value_changed.dart';

class LogInByTimePage extends StatefulWidget {
  const LogInByTimePage({
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    required this.time,
    required this.isTimeWrong,
    required this.onPressedLogIn,
    super.key,
  });

  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final String time;
  final bool isTimeWrong;
  final VoidCallback? onPressedLogIn;

  @override
  State<LogInByTimePage> createState() => _LogInByTimePageState();
}

class _LogInByTimePageState extends State<LogInByTimePage> {
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
  void didUpdateWidget(covariant LogInByTimePage oldWidget) {
    if (widget.first.value != oldWidget.first.value) {
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
  Widget build(BuildContext context) => Scaffold(
        appBar: BaseAppBar(title: S.current.logIn),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  children: [
                    const SizedBox(height: 72),
                    Text(
                      S.current.logIn,
                      style: const TextStyle(
                        color: ColorName.black,
                        fontSize: 24,
                        height: 32 / 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.current.logInDescription,
                      style: const TextStyle(
                        color: ColorName.subtitle,
                        fontSize: 16,
                        height: 24 / 16,
                      ),
                    ),
                    const SizedBox(height: 42),
                    Text(
                      widget.time,
                      style: const TextStyle(
                        color: ColorName.black,
                        fontSize: 32,
                        height: 48 / 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 42),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              top: false,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  if (widget.isTimeWrong) const ErrorBanner(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 32, 16, 34),
                    child: RoundedButton(
                      title: S.current.confirm,
                      onPressed: widget.onPressedLogIn,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
