import 'package:flutter/material.dart';

import 'custom_shimmer_widget.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return title.isNotEmpty
        ? Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )
        : const CustomShimmerWidget(
            height: 20,
            width: double.infinity,
            borderRadius: 8,
          );
  }
}
