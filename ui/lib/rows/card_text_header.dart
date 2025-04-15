import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../alerts/styled_snackbar.dart';
import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';
import '../models/formatted_date.dart';

class CardTextHeader extends StatelessWidget {
  const CardTextHeader({
    this.time,
    this.icon,
    this.onPressedDelete,
    super.key,
  });

  final FormattedDate? time;
  final IconType? icon;
  final VoidCallback? onPressedDelete;

  void _onDelete(BuildContext context) {
    onPressedDelete!();
    StyledSnackbar.instance
        .show(message: S.current.notificationDeleted, context: context);
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
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
                      text: time?.formatted,
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
            if (icon == null && onPressedDelete != null)
              GestureDetector(
                child: const Icon(
                  Icons.delete_forever,
                  color: ColorName.mainRed,
                  size: 24,
                ),
                onTap: () => _onDelete(context),
              ),
          ],
        ),
      );
}
