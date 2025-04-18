import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../buttons/rounded_outlined_button.dart';
import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';
import '../models/formatted_date.dart';
import '../rows/card_icon_header.dart';
import '../rows/card_message.dart';
import '../rows/card_text_header.dart';

class NotificationCardVm extends Equatable {
  const NotificationCardVm({
    required this.time,
    required this.message,
    required this.iconType,
    required this.onPressedDelete,
    required this.onPressedTrigger1,
    required this.onPressedTrigger2,
  });

  final FormattedDate? time;
  final String message;
  final IconType? iconType;
  final VoidCallback onPressedDelete;
  final VoidCallback onPressedTrigger1;
  final VoidCallback onPressedTrigger2;

  @override
  List<Object?> get props => [time, message, iconType];
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.vm,
    super.key,
  });

  final NotificationCardVm vm;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        color: ColorName.cardBackground,
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: ColorName.primary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
          child: Column(
            children: [
              if (vm.iconType != null) ...[
                CardIconHeader(
                  icon: vm.iconType,
                  onPressedDelete: vm.onPressedDelete,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: CardTextHeader(time: vm.time),
                ),
              ],
              if (vm.iconType == null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CardTextHeader(
                    time: vm.time,
                    onPressedDelete: vm.onPressedDelete,
                  ),
                ),
              CardMessage(message: vm.message),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: RoundedOutlinedButton(
                      title: S.current.selectTrigger1,
                      onPressed: vm.onPressedTrigger1,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(width: 13),
                  Flexible(
                    child: RoundedOutlinedButton(
                      title: S.current.selectTrigger2,
                      onPressed: vm.onPressedTrigger1,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
