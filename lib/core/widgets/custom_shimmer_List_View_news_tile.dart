
import 'package:flutter/material.dart';

import 'custom_shimmer_news_tile.dart';

class CustomShimmerListViewOfNewsTiles extends StatelessWidget {
  const CustomShimmerListViewOfNewsTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomShimmerNewsTile(),
          );
        },
      ),
    );
  }
}
