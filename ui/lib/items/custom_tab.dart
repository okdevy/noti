import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget implements PreferredSizeWidget {
  const CustomTab({
    required this.label,
    required this.icon,
    super.key,
  });

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) => Tab(
        height: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 8),
              Flexible(
                child: Text(label),
              ),
            ],
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
