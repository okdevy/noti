import 'package:flutter/material.dart';

import '../app_bar/base_app_bar.dart';
import '../models/enum/headers.dart';
import '../models/enum/trigger_type.dart';
import '../views/foldable_nested_list.dart';

class TriggerPage extends StatefulWidget {
  const TriggerPage({
    required this.triggerType,
    required this.list,
    super.key,
  });

  final TriggerType triggerType;
  final FoldingNestedListVm list;

  @override
  State<TriggerPage> createState() => _TriggerPageState();
}

class _TriggerPageState extends State<TriggerPage> {
  late final List<Data> _data;
  bool isExpanded = false;

  @override
  void initState() {
    _data = DataHelper.trigger1().data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: BaseAppBar(
          title: widget.triggerType.pageTitle,
        ),
        body: ListView(
          children: _data
              .map(
                (data) => ExpansionTile(
                  trailing: Checkbox(
                    value: true,
                    onChanged: (v) {},
                    shape: const StadiumBorder(),
                  ),
                  title: Text(data.title),
                  children: data.fields
                      .map(
                        (e) => ExpansionTile(
                          title: Text(e.title),
                          children: e.fields
                              .map((e) => ListTile(title: Text(e.title)))
                              .toList(),
                        ),
                      )
                      .toList(),
                ),
              )
              .toList(),
        ),
      );
}
