import 'package:flutter/material.dart';

class RoundedOutlinedButton extends StatelessWidget {
  const RoundedOutlinedButton({
    required this.title,
    required this.onPressed,
    this.borderColor,
    this.backgroundColor,
    this.foregroundColor,
    this.width = 92,
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
    final newStyle = OutlinedButton.styleFrom(
      elevation: elevation,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      textStyle: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.bold,
      ),
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height,
        minWidth: width,
      ),
      child: OutlinedButton(
        style: newStyle,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
