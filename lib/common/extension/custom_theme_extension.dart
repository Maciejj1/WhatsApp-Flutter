import 'package:flutter/material.dart';

import '../utils/coloor.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme  {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighligh: Color(0xFFE8E8ED),
      authAppbarTextColor: Coloors.greenLight,
    photoIconBgColor: Color(0xFFF0F2F3),
    photoIconColor: Color(0xFF9DAAB3),
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighligh: Color(0xFF09141A),
      authAppbarTextColor: Color(0xFFE9EDEF),
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighligh;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  const CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnBgColor,
      this.langBtnHighligh,
      this.authAppbarTextColor,
        this.photoIconBgColor,
        this.photoIconColor
      });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighligh,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      langBtnHighligh: langBtnHighligh ?? this.langBtnHighligh,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnHighligh: Color.lerp(langBtnHighligh, other.langBtnHighligh, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
    );
  }
}
