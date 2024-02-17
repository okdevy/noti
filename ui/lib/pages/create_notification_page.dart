import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../buttons/rounded_button.dart';
import '../buttons/rounded_outlined_button.dart';
import '../generated/colors.gen.dart';
import '../inputs/text_area_input.dart';
import '../modals/icon_style_sheet.dart';
import '../modals/yes_no_dialog.dart';
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
    required this.color,
    required this.icon,
    required this.onPressedConfirm,
    super.key,
  });

  final ValueChangedWithErrorVm<String?> message;
  final ValueChangedVm<String?> first;
  final ValueChangedVm<String?> second;
  final ValueChangedVm<String?> third;
  final ValueChangedVm<String?> forth;
  final ValueChangedVm<ColorType?> color;
  final ValueChangedVm<IconType?> icon;
  final VoidCallbackVm? onPressedConfirm;

  bool get canPop => onPressedConfirm != null;

  @override
  State<CreateNotificationPage> createState() => _CreateNotificationPageState();
}

class _CreateNotificationPageState extends State<CreateNotificationPage> {
  late final _color = ValueNotifier<ValueChangedVm<ColorType?>>(widget.color);
  late final _icon = ValueNotifier<ValueChangedVm<IconType?>>(widget.icon);

  @override
  void didUpdateWidget(covariant CreateNotificationPage oldWidget) {
    if (oldWidget.color.value != widget.color.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _color.value = widget.color;
      });
    }
    if (oldWidget.icon.value != widget.icon.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _icon.value = widget.icon;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    FocusManager.instance.primaryFocus?.unfocus();
    _color.dispose();
    _icon.dispose();
    super.dispose();
  }

  Future<void> _showIconPicker(BuildContext context) =>
      showModalBottomSheet<void>(
        context: context,
        barrierColor: Colors.transparent,
        elevation: 3,
        builder: (context) => IconStyleSheet(color: _color, icon: _icon),
      );

  Future<bool> _onWillPop(BuildContext context) async {
    final result = await showDialog<bool>(
          context: context,
          builder: (context) => YesNoDialog.discardUnsavedChanges(),
        ) ??
        false;

    if (context.mounted && result) {
      Navigator.of(context).pop();
    }

    return result;
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: !widget.canPop,
        onPopInvoked: (didPop) async {
          if (!didPop) {
            await _onWillPop(context);
          }
        },
        child: BasePage(
          title: S.current.addNewNotification,
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          bottomAction: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 34),
              child: RoundedButton(
                title: S.current.confirm,
                onPressed: widget.onPressedConfirm,
              ),
            ),
          ),
          body: Column(
            children: [
              ContainerWithTitle(
                title: S.current.message,
                children: [
                  TextAreaInput(
                    vm: widget.message,
                    labelText: S.current.enterMessage,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ContainerWithTitle(
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
              const SizedBox(height: 24),
              ContainerWithTitle(
                title: S.current.icon,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: widget.color.value?.color,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: ColorName.colon,
                            ),
                          ),
                          child: widget.icon.value?.icon40 ??
                              const Icon(
                                Icons.image_outlined,
                                color: ColorName.colon,
                                size: 48,
                              ),
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
            ],
          ),
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
