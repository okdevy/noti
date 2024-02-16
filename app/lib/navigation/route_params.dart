import 'package:go_router/go_router.dart';
import 'package:ui/models/enum/recurring_view_type.dart';

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
