import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../buttons/rounded__outlined_button.dart';
import '../generated/colors.gen.dart';
import '../inputs/text_area_input.dart';
import '../modals/icon_picker.dart';
import '../models/enum/color_type.dart';
import '../models/enum/icon_type.dart';
import '../models/value_changed.dart';
import '../rows/digits_input_row.dart';
import 'base_page.dart';

class CreateNotificationPage extends StatefulWidget {
  const CreateNotificationPage({
    required this.message,
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    required this.iconType,
    required this.colorType,
    super.key,
  });

  final ValueChangedWithErrorVm<String?> message;
  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final ValueChangedVm<IconType> iconType;
  final ValueChangedVm<ColorType> colorType;

  @override
  State<CreateNotificationPage> createState() => _CreateNotificationPageState();
}

class _CreateNotificationPageState extends State<CreateNotificationPage> {
  late final _color =
      ValueNotifier<ValueChangedVm<ColorType>>(widget.colorType);
  late final _icon = ValueNotifier<ValueChangedVm<IconType>>(widget.iconType);

  @override
  void didUpdateWidget(covariant CreateNotificationPage oldWidget) {
    if (oldWidget.colorType.value != widget.colorType.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _color.value = widget.colorType;
      });
    }
    if (oldWidget.iconType.value != widget.iconType.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _icon.value = widget.iconType;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _color.dispose();
    super.dispose();
  }

  Future<void> _showIconPicker(BuildContext context) =>
      showModalBottomSheet<void>(
        context: context,
        builder: (context) => IconPicker(colorType: _color, iconType: _icon),
      );

  @override
  Widget build(BuildContext context) => BasePage(
        title: S.current.addNewNotification,
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: ContainerWithTitle(
                title: S.current.message,
                children: [
                  TextAreaInput(
                    vm: widget.message,
                    labelText: S.current.enterMessage,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Flexible(
              child: ContainerWithTitle(
                title: S.current.typeTime,
                children: [
                  DigitsInputRow(
                    first: widget.first,
                    second: widget.second,
                    third: widget.third,
                    forth: widget.forth,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Flexible(
              child: ContainerWithTitle(
                title: S.current.icon,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: ColorName.colon,
                            ),
                          ),
                          child: widget.iconType.value.icon,
                        ),
                      ),
                      const SizedBox(width: 16),
                      RoundedOutlinedButton(
                        title: S.current.selectIcon,
                        width: 158,
                        onPressed: () async => _showIconPicker(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class ContainerWithTitle extends StatelessWidget {
  const ContainerWithTitle({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 20 / 14,
            ),
          ),
          const SizedBox(height: 6),
          ...children,
        ],
      );
}
