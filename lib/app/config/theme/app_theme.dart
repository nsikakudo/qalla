import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'dimens.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    cardColor: AppColors.whiteColor,
    dividerColor: AppColors.greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    fontFamily: customFontFamily,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBlue,
      surface: AppColors.lightGrey,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      AppColorExtension.light,
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF4C82F7),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkScaffold,
    cardColor: AppColors.darkCard,
    dividerColor: AppColors.darkBorder,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkScaffold,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    fontFamily: customFontFamily,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF4C82F7),
      surface: AppColors.darkCard,
    ),
    extensions: <ThemeExtension<dynamic>>[
      AppColorExtension.dark,
    ],
  );
}