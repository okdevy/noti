import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../generated/colors.gen.dart';

class YesNoDialog extends StatelessWidget {
  const YesNoDialog({
    required this.title,
    required this.message,
    this.actions,
    super.key,
  });

  factory YesNoDialog.discardUnsavedChanges({Key? key}) => YesNoDialog(
        title: S.current.areYouSure,
        message: S.current.doYouWantToDiscardUnsavedChanges,
        key: key,
      );

  final String? title;
  final String? message;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: title != null ? Text(title!) : null,
        content: message != null ? Text(message!) : null,
        actions: [
          if (actions != null)
            ...actions!
          else ...[
            TextButton(
              onPressed: () => _handlePopWithResult(context, false),
              child: Text(
                S.current.no,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: ColorName.primary),
              ),
            ),
            TextButton(
              onPressed: () => _handlePopWithResult(context, true),
              child: Text(
                S.current.yes,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: ColorName.primary),
              ),
            ),
          ],
        ],
      );
}

void _handlePopWithResult(BuildContext context, bool result) {
  final navigation = Navigator.of(context);
  if (navigation.canPop()) {
    navigation.pop(result);
  }
}
