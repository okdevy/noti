import 'package:flutter/material.dart';

import '../app_bar/base_app_bar.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({
    required this.title,
    required this.child,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: BaseAppBar(title: title),
        body: child,
      );
}
