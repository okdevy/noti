import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../banners/error_banner.dart';
import '../buttons/rounded_button.dart';
import '../generated/colors.gen.dart';
import '../models/value_changed.dart';
import '../rows/digits_input_row.dart';
import 'base_page.dart';

class LogInWithTimePage extends StatelessWidget {
  const LogInWithTimePage({
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
  Widget build(BuildContext context) => BasePage(
        title: S.current.logIn,
        bottomAction: Column(
          children: [
            const SizedBox(height: 32),
            if (isTimeWrong) const ErrorBanner(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 34),
              child: RoundedButton(
                title: S.current.confirm,
                onPressed: onPressedLogIn,
              ),
            ),
          ],
        ),
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
              time,
              style: const TextStyle(
                color: ColorName.black,
                fontSize: 32,
                height: 48 / 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 42),
            DigitsInputRow(
              first: first,
              second: second,
              third: third,
              forth: forth,
            ),
          ],
        ),
      );
}
