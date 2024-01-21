import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    this.time,
    this.icon,
    super.key,
  });

  final TimeOfDay? time;
  final IconType? icon;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: icon != null
              ? [
                  SizedBox(
                    height: 32,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: ColorName.primary,
                          ),
                        ),
                      ),
                      child: icon!.icon,
                    ),
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.delete_forever,
                      color: ColorName.mainRed,
                      size: 24,
                    ),
                  ),
                ]
              : [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: S.current.time,
                        style: const TextStyle(
                          color: ColorName.subtitle,
                          fontSize: 14,
                          height: 20 / 14,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: time?.format(context),
                            style: const TextStyle(
                              color: ColorName.black,
                              fontSize: 14,
                              height: 20 / 14,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (icon == null && time == null)
                    GestureDetector(
                      child: const Icon(
                        Icons.delete_forever,
                        color: ColorName.mainRed,
                        size: 24,
                      ),
                    ),
                ],
        ),
      );
}
