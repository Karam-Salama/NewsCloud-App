// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'custom_news_tile_widget.dart';

class CustomNewsTileListView extends StatelessWidget {
  CustomNewsTileListView({super.key, required this.articleList});
  List<ArticleModel> articleList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleList.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: CustomNewsTile(
              articleModel: articleList[index],
            ),
          );
        },
      ),
    );
  }
}
