// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../core/Utils/Constants/app_colors.dart';
import '../../core/Utils/Constants/app_text_style.dart';
import '../models/category_model.dart';
import '../views/home_category_view.dart';

class CustomCategoryCard extends StatelessWidget {
  CustomCategoryCard({super.key, required this.myCategoryModel, this.onpress});
  CategoryModel myCategoryModel;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return HomeCategoryView(
                category: myCategoryModel.name,
              );
            },
          ),
        );
      },
      child: Container(
        width: 185,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.blackColor),
          image: DecorationImage(
            image: AssetImage(
              myCategoryModel.image,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            myCategoryModel.name,
            style: AppTextStyle.categoryTitleStyle,
          ),
        ),
      ),
    );
  }
}
