import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle titleStyle = GoogleFonts.rokkitt(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 1.2,
  );

  static TextStyle largeStyle = GoogleFonts.rokkitt(
    fontWeight: FontWeight.w500,
    color: AppColors.fontColor,
    fontSize: 22,
    height: 1.2,
  );
  static TextStyle mediumStyle = GoogleFonts.rokkitt(
    fontWeight: FontWeight.w500,
    color: AppColors.fontColor,
    fontSize: 18,
    height: 1,
  );
  static TextStyle smallStyle = GoogleFonts.rokkitt(
    fontWeight: FontWeight.w500,
    color: AppColors.fontColor,
    fontSize: 14,
    height: 1,
  );
  static TextStyle buttonStyle = GoogleFonts.rokkitt(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1,
    color: AppColors.whiteColor,
  );
}
