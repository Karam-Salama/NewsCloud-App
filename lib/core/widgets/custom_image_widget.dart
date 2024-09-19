import 'package:flutter/material.dart';
import 'custom_shimmer_widget.dart';

class CustomShimmerImageWidget extends StatelessWidget {
  const CustomShimmerImageWidget({super.key, required this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: imageUrl != null
          ? Image.network(
              imageUrl!,
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const CustomShimmerWidget(
                    height: 170,
                    width: double.infinity,
                  );
                }
              },
            )
          : Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: const Icon(
                Icons.hide_image_rounded,
                color: Colors.grey,
                size: 50,
              ),
            ),
    );
  }
}
