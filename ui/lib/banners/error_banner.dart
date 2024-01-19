import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';

class ErrorBanner extends StatelessWidget {
  const ErrorBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 48,
        child: ColoredBox(
          color: ColorName.shadeNew,
          child: Row(
            children: [
              const SizedBox(width: 18),
              const Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.error_outline,
                  color: ColorName.mainRed,
                  size: 20,
                ),
              ),
              const SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  S.current.theTimeIsWrongTryAgain,
                  style: const TextStyle(
                    color: ColorName.mainRed,
                    fontSize: 16,
                    height: 24 / 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
