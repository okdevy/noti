import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.title,
    required this.onPressed,
    this.borderColor,
    this.backgroundColor,
    this.foregroundColor,
    this.width = 500,
    this.height = 56,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
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
  Widget build(BuildContext context) {
    final newStyle = ElevatedButton.styleFrom(
      elevation: elevation,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height,
        maxWidth: width,
        minWidth: 200,
      ),
      child: ElevatedButton(
        style: newStyle,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
