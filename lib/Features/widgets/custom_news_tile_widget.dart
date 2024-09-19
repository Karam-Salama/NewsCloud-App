import 'package:flutter/material.dart';
import 'package:news_app/Features/models/article_model.dart';

import '../../core/widgets/custom_image_widget.dart';
import '../../core/widgets/custom_subtitle_widget.dart';
import '../../core/widgets/custom_title_widget.dart';

class CustomNewsTile extends StatelessWidget {
  const CustomNewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomShimmerImageWidget(imageUrl: articleModel.image),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomTitleWidget(title: articleModel.title),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomSubtitleWidget(subtitle: articleModel.subTitle),
          ),
        ],
      ),
    );
  }
}
