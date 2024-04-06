import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

ThemeData appTheme = ThemeData(
  fontFamily: 'KronaOne',
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.appBarColor,
      toolbarHeight: 80,
      centerTitle: true),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 40,
      color: AppColors.lightGreenTitle,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
        color: AppColors.textGreenColor,
        fontSize: 22,
        fontWeight: FontWeight.w500),
    bodySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    labelLarge: TextStyle(
        color: AppColors.containerGreenColor,
        fontSize: 20,
        fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
        fontSize: 14,
        color: AppColors.buttonGreen,
        fontWeight: FontWeight.w400),
    titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
  ),
);
