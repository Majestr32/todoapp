import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/fonts.dart';

class AppTextStyles{
  static TextStyle robotoMedium20 = TextStyle(
    fontFamily: AppFonts.roboto.name,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.black
  );
  static TextStyle roboto14 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontSize: 14,
      color: AppColors.black
  );
  static TextStyle robotoMedium12 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppColors.black
  );
  static TextStyle robotoMedium18 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.black
  );
  static TextStyle timesNewRoman16 = TextStyle(
      height: 1.5,
      fontFamily: AppFonts.timesNewRoman.name,
      fontSize: 16,
      color: AppColors.black
  );
  static TextStyle robotoMedium18Opacity05 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.blackOpacity05
  );
  static TextStyle robotoMedium16Opacity05 = TextStyle(
    fontFamily: AppFonts.roboto.name,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.blackOpacity05
  );
  static TextStyle robotoMedium16Opacity04 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.blackOpacity04
  );
  static TextStyle robotoMedium16 = TextStyle(
      height: 1.5,
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.black
  );
  static TextStyle robotoBold20Opacity05 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.blackOpacity05
  );
  static TextStyle robotoBold20 = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.black
  );
  static TextStyle robotoMedium16White = TextStyle(
    fontFamily: AppFonts.roboto.name,
    fontSize: 16,
    color: AppColors.white
  );
  static TextStyle robotoMedium16MainAccent = TextStyle(
      fontFamily: AppFonts.roboto.name,
      fontSize: 16,
      color: AppColors.mainAccent
  );
}