// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `title`
  String get title {
    return Intl.message(
      'title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Back to logIn`
  String get backToLogIn {
    return Intl.message(
      'Back to logIn',
      name: 'backToLogIn',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get emailInvalid {
    return Intl.message(
      'Email is invalid',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password ?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password ?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get thisFieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get invalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't connect to internet.`
  String get couldNotConnectToInternet {
    return Intl.message(
      'Couldn\'t connect to internet.',
      name: 'couldNotConnectToInternet',
      desc: '',
      args: [],
    );
  }

  /// `Please check yor network settings.`
  String get pleaseCheckYorNetworkSettings {
    return Intl.message(
      'Please check yor network settings.',
      name: 'pleaseCheckYorNetworkSettings',
      desc: '',
      args: [],
    );
  }

  /// `Minimum length {value} symbols`
  String minimumLengthSymbols(Object value) {
    return Intl.message(
      'Minimum length $value symbols',
      name: 'minimumLengthSymbols',
      desc: '',
      args: [value],
    );
  }

  /// `Must contain at least one lowercase`
  String get mustContainAtLeastOneLowercase {
    return Intl.message(
      'Must contain at least one lowercase',
      name: 'mustContainAtLeastOneLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Must contain at least one uppercase`
  String get mustContainAtLeastOneUppercase {
    return Intl.message(
      'Must contain at least one uppercase',
      name: 'mustContainAtLeastOneUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get requiredField {
    return Intl.message(
      'Required field',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Enter current time in hh : mm format`
  String get logInDescription {
    return Intl.message(
      'Enter current time in hh : mm format',
      name: 'logInDescription',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `The time is wrong. Try again.`
  String get theTimeIsWrongTryAgain {
    return Intl.message(
      'The time is wrong. Try again.',
      name: 'theTimeIsWrongTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Recurring`
  String get recurring {
    return Intl.message(
      'Recurring',
      name: 'recurring',
      desc: '',
      args: [],
    );
  }

  /// `One-time`
  String get oneTime {
    return Intl.message(
      'One-time',
      name: 'oneTime',
      desc: '',
      args: [],
    );
  }

  /// `Add new notification`
  String get addNewNotification {
    return Intl.message(
      'Add new notification',
      name: 'addNewNotification',
      desc: '',
      args: [],
    );
  }

  /// `Time: `
  String get time {
    return Intl.message(
      'Time: ',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Message: `
  String get messageColon {
    return Intl.message(
      'Message: ',
      name: 'messageColon',
      desc: '',
      args: [],
    );
  }

  /// `Select trigger 1`
  String get selectTrigger1 {
    return Intl.message(
      'Select trigger 1',
      name: 'selectTrigger1',
      desc: '',
      args: [],
    );
  }

  /// `Select trigger 2`
  String get selectTrigger2 {
    return Intl.message(
      'Select trigger 2',
      name: 'selectTrigger2',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Enter message`
  String get enterMessage {
    return Intl.message(
      'Enter message',
      name: 'enterMessage',
      desc: '',
      args: [],
    );
  }

  /// `Type time`
  String get typeTime {
    return Intl.message(
      'Type time',
      name: 'typeTime',
      desc: '',
      args: [],
    );
  }

  /// `Icon`
  String get icon {
    return Intl.message(
      'Icon',
      name: 'icon',
      desc: '',
      args: [],
    );
  }

  /// `Select icon`
  String get selectIcon {
    return Intl.message(
      'Select icon',
      name: 'selectIcon',
      desc: '',
      args: [],
    );
  }

  /// `Icon style`
  String get iconStyle {
    return Intl.message(
      'Icon style',
      name: 'iconStyle',
      desc: '',
      args: [],
    );
  }

  /// `Background colors`
  String get backgroundColors {
    return Intl.message(
      'Background colors',
      name: 'backgroundColors',
      desc: '',
      args: [],
    );
  }

  /// `Select icons`
  String get selectIcons {
    return Intl.message(
      'Select icons',
      name: 'selectIcons',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to discard unsaved changes?`
  String get doYouWantToDiscardUnsavedChanges {
    return Intl.message(
      'Do you want to discard unsaved changes?',
      name: 'doYouWantToDiscardUnsavedChanges',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Notification deleted`
  String get notificationDeleted {
    return Intl.message(
      'Notification deleted',
      name: 'notificationDeleted',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
