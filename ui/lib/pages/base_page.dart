import 'package:flutter/material.dart';

import '../app_bar/base_app_bar.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.body,
    required this.title,
    this.bottomAction,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  final String title;
  final Widget body;
  final Widget? bottomAction;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: BaseAppBar(title: title),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: padding,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: body,
                ),
              ),
              if (bottomAction != null) bottomAction!,
            ],
          ),
        ),
      );
}
