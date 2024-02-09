import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../buttons/rounded__outlined_button.dart';
import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';
import '../rows/card_header.dart';
import '../rows/card_message.dart';

class NotificationCardVm extends Equatable {
  const NotificationCardVm({
    required this.time,
    required this.message,
    required this.iconType,
  });

  final TimeOfDay? time;
  final String message;
  final IconType? iconType;

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
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: CardHeader(
                  icon: vm.iconType,
                ),
              ),
              if (vm.iconType != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CardHeader(
                    time: vm.time,
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
                      onPressed: () {},
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(width: 13),
                  Flexible(
                    child: RoundedOutlinedButton(
                      title: S.current.selectTrigger2,
                      onPressed: () {},
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
