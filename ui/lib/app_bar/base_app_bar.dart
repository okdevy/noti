import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    required this.title,
    this.height = 44,
    this.implyLeading = true,
    super.key,
  });

  final String title;
  final double height;
  final bool implyLeading;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) => AppBar(
        leading: implyLeading ? const BackButton(color: Colors.white) : null,
        title: Text(title),
      );
}
