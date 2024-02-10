import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';
import '../models/enum/color_type.dart';
import '../models/enum/icon_type.dart';
import '../models/value_changed.dart';
import '../selector/color_selector.dart';
import '../selector/icon_selector.dart';

class IconStyleSheet extends StatelessWidget {
  const IconStyleSheet({
    required this.color,
    required this.icon,
    super.key,
  });

  final ValueListenable<ValueChangedVm<ColorType?>> color;
  final ValueListenable<ValueChangedVm<IconType?>> icon;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 473,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        S.current.iconStyle,
                        style: const TextStyle(
                          color: ColorName.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 30 / 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: IconButton.filled(
                        onPressed: () => Navigator.of(context).pop(),
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 31,
                  color: ColorName.shadeNew,
                  thickness: 1,
                ),
                ColorSelector(color: color),
                const SizedBox(height: 16),
                IconSelector(icon: icon),
              ],
            ),
          ),
        ),
      );
}
