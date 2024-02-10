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
