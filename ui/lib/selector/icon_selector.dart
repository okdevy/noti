import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/l10n.dart';

import '../generated/colors.gen.dart';
import '../models/enum/icon_type.dart';
import '../models/value_changed.dart';

class IconSelector extends StatelessWidget {
  const IconSelector({
    required this.icon,
    super.key,
  });

  final ValueListenable<ValueChangedVm<IconType?>> icon;

  @override
  Widget build(BuildContext context) => Column(
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
                                    borderRadius: const BorderRadius.all(
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
      );
}
