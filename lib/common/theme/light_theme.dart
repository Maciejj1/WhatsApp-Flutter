import 'package:flutter/material.dart';
import 'package:untitled/common/utils/coloor.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: Coloors.backgroundLight,
      scaffoldBackgroundColor: Coloors.backgroundLight,
      extensions: [
        CustomThemeExtension.lightMode,
      ],
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.greenLight,
        foregroundColor: Coloors.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )));
}
