import 'package:models/enum/color_type.dart';
import 'package:models/enum/icon_type.dart';

import '../app_state.dart';

/// Returns [String?] value
String? selectCreateOneTimeFirst(AppState state) => state.createOneTime.first;

/// Returns [String?] second value
String? selectCreateOneTimeSecond(AppState state) => state.createOneTime.second;

/// Returns [String?] third value
String? selectCreateOneTimeThird(AppState state) => state.createOneTime.third;

/// Returns [String?] fourth value
String? selectCreateOneTimeFourth(AppState state) => state.createOneTime.fourth;

/// Returns [String?] message value
String? selectCreateOneTimeMessage(AppState state) =>
    state.createOneTime.message;

/// Returns [IconTypeEnum?] icon type
IconTypeEnum? selectCreateOneTimeIcon(AppState state) =>
    state.createOneTime.icon;

/// Returns [ColorTypeEnum?] color type
ColorTypeEnum? selectCreateOneTimeColor(AppState state) =>
    state.createOneTime.color;

/// Returns [bool] true if the create one time notification page is valid
bool selectCreateOneTimeIsValid(AppState state) {
  final first = selectCreateOneTimeFirst(state);
  final second = selectCreateOneTimeSecond(state);
  final third = selectCreateOneTimeThird(state);
  final fourth = selectCreateOneTimeFourth(state);
  final message = selectCreateOneTimeMessage(state);

  return first != null &&
      second != null &&
      third != null &&
      fourth != null &&
      message != null;
}
