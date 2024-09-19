import 'package:flutter/material.dart';

import 'custom_shimmer_widget.dart';

class CustomSubtitleWidget extends StatelessWidget {
  const CustomSubtitleWidget({super.key, required this.subtitle});
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return subtitle != null && subtitle!.isNotEmpty
        ? Text(
            subtitle!,
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        : const CustomShimmerWidget(
            height: 14,
            width: double.infinity,
            borderRadius: 8,
          );
  }
}
