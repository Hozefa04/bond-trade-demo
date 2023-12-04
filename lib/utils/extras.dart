import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String convertDate(String date) {
  // Parse the original date string
  DateTime dateTime = DateFormat('yyyy-MM-dd').parse(date);
  // Format the date to DD/MMM/YYYY
  return DateFormat('dd MMM, yyyy').format(dateTime);
}

String formatNumber(int number) {
  if (number >= 1000000000) {
    return '${(number / 1000000000).toStringAsFixed(1)}B';
  } else if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)}M';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(1)}K';
  } else {
    return number.toString();
  }
}

Color getColorBasedOnRating(String rating) {
  switch (rating) {
    case 'AAA':
      return AppColors.greenColor; // High quality
    case 'AA':
    case 'A+':
    case 'A':
    case 'A-':
      return AppColors.blueColor; // High-medium quality
    case 'BBB':
    case 'BB':
    case 'B+':
    case 'B':
    case 'B-':
      return AppColors.orangeColor; // Medium-low quality
    case 'CCC':
    case 'CC':
    case 'C':
    case 'D':
      return AppColors.errorColor; // Low quality
    default:
      return AppColors.greyColor; // For unrated or other ratings
  }
}
