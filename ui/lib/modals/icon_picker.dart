import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';
import '../models/enum/color_type.dart';
import '../models/enum/icon_type.dart';
import '../models/value_changed.dart';

class IconPicker extends StatelessWidget {
  const IconPicker({
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.backgroundColors,
                      style: const TextStyle(
                        color: ColorName.subtitle,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 24 / 16,
                      ),
                    ),
                    const SizedBox(height: 11),
                    ValueListenableBuilder(
                      valueListenable: color,
                      builder: (context, value, child) => Wrap(
                        spacing: 6,
                        children: ColorType.values
                            .mapIndexed(
                              (i, e) => Stack(
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: i == color.value.value?.index
                                          ? Border.all(
                                              color: ColorName.primary,
                                              width: 2,
                                            )
                                          : null,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: GestureDetector(
                                        onTap: () async => value.onChanged(e),
                                        child: Center(
                                          child: SizedBox(
                                            width: 60,
                                            height: 60,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: e.color,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(40),
                                                ),
                                                border: Border.all(
                                                  color: ColorName.colon,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(growable: false),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.selectIcons,
                      style: const TextStyle(
                        color: ColorName.subtitle,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 24 / 16,
                      ),
                    ),
                    const SizedBox(height: 11),
                    ValueListenableBuilder(
                      valueListenable: icon,
                      builder: (context, value, child) => Wrap(
                        spacing: 6,
                        children: [
                          ...IconType.values.mapIndexed(
                            (i, e) => Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: i == icon.value.value?.index
                                        ? Border.all(
                                            color: ColorName.primary,
                                            width: 2,
                                          )
                                        : null,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(40),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: GestureDetector(
                                      onTap: () async => value.onChanged(e),
                                      child: Center(
                                        child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(40),
                                              ),
                                              border: Border.all(
                                                color: ColorName.colon,
                                              ),
                                            ),
                                            child: e.icon,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
