import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../generated/colors.gen.dart';
import '../indicators/base_circle_indicator.dart';
import '../models/enum/recurring_view_type.dart';

class RecurringViewVm extends Equatable {
  const RecurringViewVm({
    required this.isWaiting,
    required this.onPressedOneMinute,
    required this.onPressedTwoMinutes,
    required this.onPressedThreeMinutes,
  });

  final bool isWaiting;
  final VoidCallback onPressedOneMinute;
  final VoidCallback onPressedTwoMinutes;
  final VoidCallback onPressedThreeMinutes;

  @override
  List<Object?> get props => [isWaiting];
}

class RecurringView extends StatelessWidget {
  const RecurringView({
    required this.vm,
    super.key,
  });

  final RecurringViewVm vm;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(bottom: 34),
            children: [
              ...RecurringType.values.map(
                (e) => RecurringTile(
                  label: e.label,
                  onPressed: switch (e) {
                    RecurringType.oneMinute => vm.onPressedOneMinute,
                    RecurringType.twoMinutes => vm.onPressedTwoMinutes,
                    RecurringType.threeMinutes => vm.onPressedThreeMinutes,
                  },
                ),
              ),
            ],
          ),
          if (vm.isWaiting) const BaseCircleIndicator(),
        ],
      );
}

class RecurringTile extends StatelessWidget {
  const RecurringTile({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => ListTile(
        onTap: onPressed,
        tileColor: ColorName.cardBackground,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: ColorName.primary,
        ),
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: ColorName.black,
                fontSize: 16,
                height: 24 / 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      );
}
