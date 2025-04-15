import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../alerts/styled_snackbar.dart';
import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';

class CardIconHeader extends StatelessWidget {
  const CardIconHeader({
    this.icon,
    this.onPressedDelete,
    super.key,
  });

  final IconType? icon;
  final VoidCallback? onPressedDelete;

  void _onDelete(BuildContext context) {
    onPressedDelete!();
    StyledSnackbar.instance
        .show(message: S.current.notificationDeleted, context: context);
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: ColorName.primary,
                    ),
                  ),
                ),
                child: icon!.icon20,
              ),
            ),
            InkWell(
              onTap: onPressedDelete,
              child: const Icon(
                Icons.delete_forever,
                color: ColorName.mainRed,
              ),
            ),
          ],
        ),
      );
}
