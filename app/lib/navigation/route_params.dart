import 'package:go_router/go_router.dart';
import 'package:ui/models/enum/recurring_view_type.dart';
import 'package:ui/models/enum/trigger_type.dart';

abstract class RouteParams {
  Map<String, dynamic> get params;
}

extension MapKeyCast on Map<String, dynamic> {
  int toInt(String key) => int.parse(this[key]!);
}

class ListViewRouteParams implements RouteParams {
  const ListViewRouteParams({
    required this.pageType,
  });

  ListViewRouteParams.withState(GoRouterState state)
      : pageType = switch (state.pathParameters['pageType']!) {
          'oneMinute' => RecurringType.oneMinute,
          'twoMinutes' => RecurringType.twoMinutes,
          'threeMinutes' => RecurringType.threeMinutes,
          _ => throw UnimplementedError(
              'Unknown pageType: ${state.pathParameters['pageType']}',
            ),
        };

  final RecurringType pageType;

  @override
  Map<String, String> get params => {
        'pageType': pageType.name,
      };
}

class SelectTriggerRouteParams implements RouteParams {
  const SelectTriggerRouteParams({
    required this.triggerType,
  });

  SelectTriggerRouteParams.withState(GoRouterState state)
      : triggerType = switch (state.pathParameters['triggerType']!) {
          'trigger1' => TriggerType.trigger1,
          'trigger2' => TriggerType.trigger2,
          _ => throw UnimplementedError(
              'Unknown triggerType: ${state.pathParameters['triggerType']}',
            ),
        };

  final TriggerType triggerType;

  @override
  Map<String, String> get params => {
        'triggerType': triggerType.name,
      };
}
