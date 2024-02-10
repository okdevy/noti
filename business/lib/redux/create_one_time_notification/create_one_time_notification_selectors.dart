import '../app_state.dart';

/// Returns [String?] value
String? selectCreateOneTimeNotificationFirst(AppState state) =>
    state.createOneTimeNotification.first;

/// Returns [String?] second value
String? selectCreateOneTimeNotificationSecond(AppState state) =>
    state.createOneTimeNotification.second;

/// Returns [String?] third value
String? selectCreateOneTimeNotificationThird(AppState state) =>
    state.createOneTimeNotification.third;

/// Returns [String?] fourth value
String? selectCreateOneTimeNotificationFourth(AppState state) =>
    state.createOneTimeNotification.fourth;

/// Returns [String?] message value
String? selectCreateOneTimeNotificationMessage(AppState state) =>
    state.createOneTimeNotification.message;

/// Returns [int?] icon index
int? selectCreateOneTimeNotificationIconIndex(AppState state) =>
    state.createOneTimeNotification.iconIndex;

/// Returns [int?] color index
int? selectCreateOneTimeNotificationColorIndex(AppState state) =>
    state.createOneTimeNotification.colorIndex;
