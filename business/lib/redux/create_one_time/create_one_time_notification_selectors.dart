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

/// Returns [int?] icon index
int? selectCreateOneTimeIconIndex(AppState state) =>
    state.createOneTime.iconIndex;

/// Returns [int?] color index
int? selectCreateOneTimeColorIndex(AppState state) =>
    state.createOneTime.colorIndex;
