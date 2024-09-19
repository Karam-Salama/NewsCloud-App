import 'package:flutter/material.dart';
import 'package:news_app/core/Utils/Constants/app_colors.dart';

class AppTextStyle {
  static const TextStyle appBarTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    fontFamily: 'Poppins',
  );
  static const TextStyle categoryTitleStyle = TextStyle(
    fontSize: 15,
    fontFamily: 'Poppins',
    color: AppColors.primaryColor,
  );
  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Poppins',
    color: AppColors.blackColor,
  );
}
