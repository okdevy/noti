import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../buttons/rounded_button.dart';
import '../cards/notification_card.dart';
import '../indicators/base_circle_indicator.dart';

class OneTimeViewVm extends Equatable {
  const OneTimeViewVm({
    required this.isWaiting,
    required this.items,
    required this.onPressedAdd,
  });

  final bool isWaiting;
  final List<NotificationCardVm> items;
  final VoidCallback onPressedAdd;

  @override
  List<Object?> get props => [isWaiting, items, onPressedAdd];
}

class OneTimeView extends StatelessWidget {
  const OneTimeView({
    required this.oneTimeView,
    super.key,
  });

  final OneTimeViewVm oneTimeView;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ...oneTimeView.items.map(
                (vm) => NotificationCard(vm: vm),
              ),
              RoundedButton(
                title: S.current.addNewNotification,
                onPressed: oneTimeView.onPressedAdd,
                icon: const Icon(Icons.add_circle),
              ),
            ],
          ),
          if (oneTimeView.isWaiting) const BaseCircleIndicator(),
        ],
      );
}
