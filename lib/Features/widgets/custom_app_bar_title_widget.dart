import 'package:flutter/material.dart';
import 'package:news_app/core/Utils/Constants/app_colors.dart';

import '../../core/Utils/Constants/app_text_style.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'News',
              style: AppTextStyle.appBarTitleStyle
                  .copyWith(color: AppColors.blackColor),
            ),
            TextSpan(
              text: 'Cloud',
              style: AppTextStyle.appBarTitleStyle
                  .copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
