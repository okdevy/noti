import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../buttons/rounded_button.dart';
import '../cards/notification_card.dart';

class OneTimeViewVm extends Equatable {
  const OneTimeViewVm({
    required this.items,
    required this.onPressedAdd,
  });

  final List<NotificationCardVm> items;
  final VoidCallback onPressedAdd;

  @override
  List<Object?> get props => [items, onPressedAdd];
}

class OneTimeView extends StatelessWidget {
  const OneTimeView({
    required this.oneTimeView,
    super.key,
  });

  final OneTimeViewVm oneTimeView;
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...oneTimeView.items.map(
            (e) => NotificationCard(
              vm: NotificationCardVm(
                time: e.time,
                message: e.message,
                iconType: e.iconType,
              ),
            ),
          ),
          RoundedButton(
            title: S.current.addNewNotification,
            onPressed: oneTimeView.onPressedAdd,
            icon: const Icon(Icons.add_circle),
          ),
        ],
      );
}
