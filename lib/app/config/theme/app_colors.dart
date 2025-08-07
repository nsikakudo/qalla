import 'package:flutter/material.dart';

class AppColors {
  // Brand & Accent Colors
  static const Color primaryBlue = Color(0xFF0D56E3);
  static const Color darkBlueColor = Color(0xff032B69);
  static const Color darkRedColor = Color(0xffFF4E4E);
  static const Color greenColor = Color(0xff17BD5E);

  // Neutral & Background Colors (Light Theme)
  static const Color whiteColor = Color(0xffffffff);
  static const Color lightGrey = Color(0xFFF7F8F9); // General background
  static const Color greyColor = Color(0xffEFF1F4); // Borders
  static const Color unselectedCategoryColorLight = Color(0xFFECEFF2);
  static const Color blueChalk = Color(0xFFE6F0FF);
  static const Color lightRed = Color(0xFFFFE5E5);

  // Neutral & Background Colors (Dark Theme)
  static const Color darkScaffold = Color(0xFF121212);
  static const Color darkCard = Color(0xFF1E1E1E);
  static const Color darkBorder = Color(0xFF2D2D2D);
  static const Color unselectedCategoryColorDark = Color(0xFF2A2A2A);

  // Text & UI Colors (Light Theme)
  static const Color selectedHeaderColorLight = Color(0xff355587);
  static const Color unselectedHeaderColorLight = Color(0xffDAE0EA);
  static const Color marketTitleColorLight = Color(0xFF7387A6);
  static const Color secondaryTextColorLight = Color(0xFF98A8C1); // darkGray
  static const Color hintColorLight = Color(0xFFC9D1DE); // searchColor
}

// --- Custom Theme Extension for App Colors ---
// Use this extension to access colors in your widgets: Theme.of(context).extension<AppColorExtension>()!
@immutable
class AppColorExtension extends ThemeExtension<AppColorExtension> {
  const AppColorExtension({
    required this.cardBackground,
    required this.cardBorder,
    required this.primaryText,
    required this.secondaryText,
    required this.hintText,
    required this.selectedHeader,
    required this.unselectedHeader,
    required this.selectedCategoryBackground,
    required this.unselectedCategoryBackground,
    required this.selectedCategoryText,
    required this.unselectedCategoryText,
    required this.yesButtonBackground,
    required this.noButtonBackground,
    required this.yesButtonText,
    required this.noButtonText,
    required this.yesButtonBorder,
    required this.noButtonBorder,
    required this.iconColor,
  });

  // Define your colors here
  final Color cardBackground;
  final Color cardBorder;
  final Color primaryText;
  final Color secondaryText;
  final Color hintText;
  final Color selectedHeader;
  final Color unselectedHeader;
  final Color selectedCategoryBackground;
  final Color unselectedCategoryBackground;
  final Color selectedCategoryText;
  final Color unselectedCategoryText;
  final Color yesButtonBackground;
  final Color noButtonBackground;
  final Color yesButtonText;
  final Color noButtonText;
  final Color yesButtonBorder;
  final Color noButtonBorder;
  final Color iconColor;


  @override
  AppColorExtension copyWith({
    Color? cardBackground,
    Color? cardBorder,
    Color? primaryText,
    Color? secondaryText,
    Color? hintText,
    Color? selectedHeader,
    Color? unselectedHeader,
    Color? selectedCategoryBackground,
    Color? unselectedCategoryBackground,
    Color? selectedCategoryText,
    Color? unselectedCategoryText,
    Color? yesButtonBackground,
    Color? noButtonBackground,
    Color? yesButtonText,
    Color? noButtonText,
    Color? yesButtonBorder,
    Color? noButtonBorder,
    Color? iconColor,
  }) {
    return AppColorExtension(
      cardBackground: cardBackground ?? this.cardBackground,
      cardBorder: cardBorder ?? this.cardBorder,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      hintText: hintText ?? this.hintText,
      selectedHeader: selectedHeader ?? this.selectedHeader,
      unselectedHeader: unselectedHeader ?? this.unselectedHeader,
      selectedCategoryBackground: selectedCategoryBackground ?? this.selectedCategoryBackground,
      unselectedCategoryBackground: unselectedCategoryBackground ?? this.unselectedCategoryBackground,
      selectedCategoryText: selectedCategoryText ?? this.selectedCategoryText,
      unselectedCategoryText: unselectedCategoryText ?? this.unselectedCategoryText,
      yesButtonBackground: yesButtonBackground ?? this.yesButtonBackground,
      noButtonBackground: noButtonBackground ?? this.noButtonBackground,
      yesButtonText: yesButtonText ?? this.yesButtonText,
      noButtonText: noButtonText ?? this.noButtonText,
      yesButtonBorder: yesButtonBorder ?? this.yesButtonBorder,
      noButtonBorder: noButtonBorder ?? this.noButtonBorder,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other,
      double t,
      ) {
    if (other is! AppColorExtension) {
      return this;
    }
    return AppColorExtension(
        cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
        cardBorder: Color.lerp(cardBorder, other.cardBorder, t)!,
        primaryText: Color.lerp(primaryText, other.primaryText, t)!,
        secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
        hintText: Color.lerp(hintText, other.hintText, t)!,
        selectedHeader: Color.lerp(selectedHeader, other.selectedHeader, t)!,
        unselectedHeader: Color.lerp(unselectedHeader, other.unselectedHeader, t)!,
        selectedCategoryBackground: Color.lerp(selectedCategoryBackground, other.selectedCategoryBackground, t)!,
        unselectedCategoryBackground: Color.lerp(unselectedCategoryBackground, other.unselectedCategoryBackground, t)!,
        selectedCategoryText: Color.lerp(selectedCategoryText, other.selectedCategoryText, t)!,
        unselectedCategoryText: Color.lerp(unselectedCategoryText, other.unselectedCategoryText, t)!,
        yesButtonBackground: Color.lerp(yesButtonBackground, other.yesButtonBackground, t)!,
        noButtonBackground: Color.lerp(noButtonBackground, other.noButtonBackground, t)!,
        yesButtonText: Color.lerp(yesButtonText, other.yesButtonText, t)!,
        noButtonText: Color.lerp(noButtonText, other.noButtonText, t)!,
        yesButtonBorder: Color.lerp(yesButtonBorder, other.yesButtonBorder, t)!,
        noButtonBorder: Color.lerp(noButtonBorder, other.noButtonBorder, t)!,
        iconColor: Color.lerp(iconColor, other.iconColor, t)!
    );
  }

  // --- Light Theme Colors ---
  static const light = AppColorExtension(
    cardBackground: AppColors.whiteColor,
    cardBorder: AppColors.greyColor,
    primaryText: AppColors.darkBlueColor,
    secondaryText: AppColors.marketTitleColorLight,
    hintText: AppColors.hintColorLight,
    selectedHeader: AppColors.selectedHeaderColorLight,
    unselectedHeader: AppColors.unselectedHeaderColorLight,
    selectedCategoryBackground: AppColors.primaryBlue,
    unselectedCategoryBackground: AppColors.unselectedCategoryColorLight,
    selectedCategoryText: Colors.white,
    unselectedCategoryText: AppColors.selectedHeaderColorLight,
    yesButtonBackground: AppColors.blueChalk,
    noButtonBackground: AppColors.lightRed,
    yesButtonText: AppColors.primaryBlue,
    noButtonText: AppColors.darkRedColor,
    yesButtonBorder: AppColors.primaryBlue,
    noButtonBorder: AppColors.darkRedColor,
    iconColor: AppColors.secondaryTextColorLight,
  );

  // --- Dark Theme Colors ---
  static final dark = AppColorExtension(
    cardBackground: AppColors.darkCard,
    cardBorder: AppColors.darkBorder,
    primaryText: Colors.white.withOpacity(0.9),
    secondaryText: Colors.white.withOpacity(0.7),
    hintText: Colors.white.withOpacity(0.5),
    selectedHeader: Colors.white,
    unselectedHeader: Colors.white.withOpacity(0.5),
    selectedCategoryBackground: const Color(0xFF4C82F7), // Lighter blue for dark mode
    unselectedCategoryBackground: AppColors.unselectedCategoryColorDark,
    selectedCategoryText: Colors.white,
    unselectedCategoryText: Colors.white.withOpacity(0.9),
    yesButtonBackground: const Color(0xFF4C82F7).withOpacity(0.15),
    noButtonBackground: AppColors.darkRedColor.withOpacity(0.15),
    yesButtonText: const Color(0xFF4C82F7),
    noButtonText: AppColors.darkRedColor,
    yesButtonBorder: const Color(0xFF4C82F7),
    noButtonBorder: AppColors.darkRedColor,
    iconColor: Colors.white.withOpacity(0.6),
  );
}




// class AppColors {
//   static const Color whiteColor = Color(0xffffffff);
//   static const Color greyColor = Color(0xffEFF1F4);
//   static const Color selectedHeaderColor = Color(0xff355587);
//   static const Color unselectedHeaderColor = Color(0xffDAE0EA);
//   static const Color darkBlueColor = Color(0xff032B69);
//   static const Color lightBlueColor = Color(0xff0166F4);
//   static const Color darkRedColor = Color(0xffFF4E4E);
//   static const Color greenColor = Color(0xff17BD5E);
//   static const Color primaryBlue = Color(0xFF0D56E3);
//   static const Color lightGrey = Color(0xFFF7F8F9);
//   static const Color darkGrey = Color(0xFFB3BFD2);
//   static const Color darkGray = Color(0xFF98A8C1);
//   static const Color lightRed = Color(0xFFFFE5E5);
//   static const Color blueChalk = Color(0xFFE6F0FF);
//   static const Color searchColor = Color(0xFFC9D1DE);
//   static const Color marketTitleColor = Color(0xFF7387A6);
//   static const Color unselectedCategoryColor = Color(0xFFECEFF2);
// }
