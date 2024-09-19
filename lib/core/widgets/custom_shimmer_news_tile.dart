
import 'package:flutter/material.dart';

import 'custom_shimmer_widget.dart';

class CustomShimmerNewsTile extends StatelessWidget {
  const CustomShimmerNewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shimmer for the image
          CustomShimmerWidget(
            height: 170,
            width: double.infinity,
            borderRadius: 16,
          ),
          SizedBox(height: 8),
          // Shimmer for the title
          CustomShimmerWidget(
            height: 20,
            width: 200,
            borderRadius: 8,
          ),
          SizedBox(height: 4),
          // Shimmer for the subtitle
          CustomShimmerWidget(
            height: 14,
            width: 150,
            borderRadius: 8,
          ),
        ],
      ),
    );
  }
}
