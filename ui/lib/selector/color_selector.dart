import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';
import '../models/enum/color_type.dart';
import '../models/value_changed.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    required this.color,
    super.key,
  });

  final ValueListenable<ValueChangedVm<ColorType?>> color;

  @override
  Widget build(BuildContext context) => Column(
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
                                      borderRadius: const BorderRadius.all(
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
      );
}
