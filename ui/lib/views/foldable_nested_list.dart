import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) => const SizedBox();
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
