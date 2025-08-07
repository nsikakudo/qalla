import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'dimens.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    fontFamily: customFontFamily,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBlue,
      secondary: AppColors.lightBlueColor,
      background: AppColors.lightGrey,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF4C82F7),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1F1F1F),
      elevation: 1,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xFF1F1F1F),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    fontFamily: customFontFamily,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF4C82F7),
      secondary: Color(0xFF0166F4),
    ),
  );
}




// class AppTheme {
//   static final ThemeData lightTheme = ThemeData(
//     primaryColor: AppColors.primaryBlue,
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: AppColors.lightGrey,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.whiteColor,
//       elevation: 0,
//       iconTheme: IconThemeData(color: Colors.black),
//       titleTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//     ),
//     fontFamily: customFontFamily,
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.primaryBlue,
//       secondary: AppColors.lightBlueColor,
//       background: AppColors.lightGrey,
//     ),
//   );
//
//   static final ThemeData darkTheme = ThemeData(
//     primaryColor: const Color(0xFF4C82F7),
//     brightness: Brightness.dark,
//     scaffoldBackgroundColor: const Color(0xFF121212),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Color(0xFF1F1F1F),
//       elevation: 1,
//       iconTheme: IconThemeData(color: Colors.white),
//       titleTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//     ),
//     fontFamily: customFontFamily,
//     colorScheme: const ColorScheme.dark(
//       primary: Color(0xFF4C82F7),
//       secondary: Color(0xFF0166F4),
//     ),
//   );
// }