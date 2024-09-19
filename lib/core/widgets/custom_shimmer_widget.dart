import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerWidget extends StatelessWidget {
  const CustomShimmerWidget({
    super.key,
    required this.height,
    required this.width,
    this.borderRadius = 0,
    this.child,
  });

  final double height;
  final double width;
  final double borderRadius;
  final Widget? child; // Optional child widget for custom content

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.grey[300],
        ),
        child: child, // Ensure child is passed and rendered properly
      ),
    );
  }
}
