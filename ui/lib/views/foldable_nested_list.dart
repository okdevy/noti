import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class FoldingNestedListVm extends Equatable {
  const FoldingNestedListVm({
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  List<Object?> get props => [onPressed == null];
}

class FoldingNestedList extends StatelessWidget {
  const FoldingNestedList({
    required this.vm,
    super.key,
  });

  final FoldingNestedListVm vm;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ExpansionPanelList(
          children: [
            ExpansionPanel(
              headerBuilder: (context, isExpanded) => const ListTile(
                title: Text('Header 1'),
              ),
              body: const Column(
                children: [
                  ListTile(
                    title: Text('Child 1.1'),
                  ),
                  ListTile(
                    title: Text('Child 1.2'),
                  ),
                  ListTile(
                    title: Text('Child 1.3'),
                  ),
                ],
              ),
            ),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) => const ListTile(
                title: Text('Header 2'),
              ),
              body: const Column(
                children: [
                  ListTile(
                    title: Text('Child 2.1'),
                  ),
                  ListTile(
                    title: Text('Child 2.2'),
                  ),
                  ListTile(
                    title: Text('Child 2.3'),
                  ),
                ],
              ),
            ),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) => const ListTile(
                title: Text('Header 3'),
              ),
              body: const Column(
                children: [
                  ListTile(
                    title: Text('Child 3.1'),
                  ),
                  ListTile(
                    title: Text('Child 3.2'),
                  ),
                  ListTile(
                    title: Text('Child 3.3'),
                  ),
                ],
              ),
            ),
          ],
          // children: items
          //     .map<ExpansionPanel>(
          //       (item) => ExpansionPanel(
          //         headerBuilder: (context, isExpanded) => ListTile(
          //           title: Text(item.header),
          //         ),
          //         body: Column(
          //           children: item.children
          //               .map<ListTile>(
          //                 (child) => ListTile(
          //                   title: Text(child),
          //                 ),
          //               )
          //               .toList(),
          //         ),
          //       ),
          //     )
          //     .toList(),
        ),
      );
}

class Item {
  Item({
    required this.header,
    required this.children,
  });

  String header;
  List<String> children;
}

List<Item> generateItems() => [
      Item(
        header: 'Header 1',
        children: ['Child 1.1', 'Child 1.2', 'Child 1.3'],
      ),
      Item(
        header: 'Header 2',
        children: ['Child 2.1', 'Child 2.2', 'Child 2.3'],
      ),
      Item(
        header: 'Header 3',
        children: ['Child 3.1', 'Child 3.2', 'Child 3.3'],
      ),
    ];
