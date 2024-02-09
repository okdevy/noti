import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../app_bar/base_app_bar.dart';
import '../generated/colors.gen.dart';
import '../items/custom_tab.dart';
import '../models/enum/notification_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.isWaiting,
    required this.oneTime,
    required this.recurring,
    super.key,
  });

  final bool isWaiting;
  final Widget oneTime;
  final Widget recurring;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(
    length: 2,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: BaseAppBar(implyLeading: false, title: S.current.notifications),
        body: Column(
          children: [
            ColoredBox(
              color: ColorName.black,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                            surfaceVariant: Colors.transparent,
                          ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: TabBar(
                        controller: _tabController,
                        indicator: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: ColorName.primary,
                        ),
                        labelPadding: EdgeInsets.zero,
                        labelColor: Colors.white,
                        unselectedLabelColor: ColorName.black,
                        tabs: NotificationType.values
                            .map(
                              (type) => CustomTab(
                                label: type.localizedName,
                                icon: type.icon,
                              ),
                            )
                            .toList(growable: false),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: TabBarView(
                controller: _tabController,
                children: [
                  widget.oneTime,
                  widget.recurring,
                ],
              ),
            ),
          ],
        ),
      );
}
