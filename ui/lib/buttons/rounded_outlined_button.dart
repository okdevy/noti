import 'package:flutter/material.dart';

class RoundedOutlinedButton extends StatelessWidget {
  const RoundedOutlinedButton({
    required this.title,
    required this.onPressed,
    this.borderColor,
    this.backgroundColor,
    this.foregroundColor,
    this.width = 92,
    this.height = 40,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.elevation = 0,
    super.key,
  });

  final Color? borderColor;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final String title;
  final double elevation;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height,
          maxHeight: height,
          minWidth: width,
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      );
}
