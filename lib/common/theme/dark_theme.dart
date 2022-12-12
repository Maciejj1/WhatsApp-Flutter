import 'package:flutter/material.dart';
import 'package:untitled/common/extension/custom_theme_extension.dart';
import 'package:untitled/common/utils/coloor.dart';

ThemeData darkTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Coloors.backgroundDark,
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.greenDark,
        foregroundColor: Coloors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )
    )
  );
}