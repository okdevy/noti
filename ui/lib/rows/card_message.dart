import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({
    required this.message,
    this.label,
    super.key,
  });

  final String? label;
  final String message;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                text: label ?? S.current.messageColon,
                style: const TextStyle(
                  color: ColorName.subtitle,
                  fontSize: 14,
                  height: 20 / 14,
                  fontWeight: FontWeight.normal,
                ),
                children: [
                  TextSpan(
                    text: message,
                    style: const TextStyle(
                      color: ColorName.black,
                      fontSize: 14,
                      height: 20 / 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
