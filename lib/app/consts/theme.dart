import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/fonts.dart';

class AppTheme{
  static ThemeData theme = ThemeData(
    fontFamily: AppFonts.roboto.name,
    primaryColor: AppColors.mainAccent,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: AppColors.mainAccent,
      selectionHandleColor: AppColors.mainAccent
    )
  );
}