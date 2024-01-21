import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    required this.title,
    this.height = 52,
    super.key,
  });

  final String title;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(title),
        ),
      );
}
