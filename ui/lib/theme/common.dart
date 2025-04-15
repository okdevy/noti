import 'package:flutter/material.dart';

import '../generated/colors.gen.dart';

ThemeData _base = ThemeData(
  useMaterial3: true,
);

ThemeData buildTheme() => _base.copyWith(
      inputDecorationTheme: inputDecorationTheme(),
      dialogTheme: dialogTheme(),
      elevatedButtonTheme: elevatedButtonTheme(),
      appBarTheme: appBarTheme(),
      outlinedButtonTheme: outlinedButtonTheme(),
    );

ElevatedButtonThemeData elevatedButtonTheme() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: ColorName.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: ColorName.primary),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 24 / 16,
        ),
        minimumSize: const Size.fromHeight(48),
      ),
    );

OutlinedButtonThemeData outlinedButtonTheme() => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: ColorName.primary,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

DialogTheme dialogTheme() => _base.dialogTheme.copyWith();

InputDecorationTheme inputDecorationTheme() {
  const borderRadius = BorderRadius.all(Radius.circular(8));

  return _base.inputDecorationTheme.copyWith(
    isDense: true,
    errorMaxLines: 10,
    border: const OutlineInputBorder(borderRadius: borderRadius),
    enabledBorder: const OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: ColorName.border),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: Colors.grey.shade200),
    ),
    focusColor: ColorName.primary,
    labelStyle: const TextStyle(color: ColorName.colon),
  );
}

AppBarTheme appBarTheme() => _base.appBarTheme.copyWith(
      foregroundColor: Colors.white,
      centerTitle: true,
      color: ColorName.black,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: _base.iconTheme.copyWith(color: ColorName.primary),
    );
