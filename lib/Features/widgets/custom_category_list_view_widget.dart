// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../core/Utils/Constants/app_assets.dart';
import '../../core/Utils/Constants/app_strings.dart';
import '../models/category_model.dart';
import 'custom_category_list_view_item_widget.dart';

class CustomCategoryListView extends StatelessWidget {
  CustomCategoryListView({super.key});

  List<CategoryModel> categories = [
    CategoryModel(name: AppStrings.business, image: AppAssets.business),
    CategoryModel(
        name: AppStrings.entertainment, image: AppAssets.entertainment),
    CategoryModel(name: AppStrings.general, image: AppAssets.general),
    CategoryModel(name: AppStrings.health, image: AppAssets.health),
    CategoryModel(name: AppStrings.science, image: AppAssets.science),
    CategoryModel(name: AppStrings.sports, image: AppAssets.sports),
    CategoryModel(name: AppStrings.technology, image: AppAssets.technology),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        itemBuilder: (_, index) {
          return CustomCategoryCard(myCategoryModel: categories[index]);
        },
      ),
    );
  }
}
