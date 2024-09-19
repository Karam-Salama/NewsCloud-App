import 'package:flutter/material.dart';

import '../../core/Utils/Constants/app_text_style.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText(
      {super.key, required this.text, required this.textAlign});
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
      child: Text(
        text,
        style: AppTextStyle.headerTextStyle,
        textAlign: textAlign,
      ),
    );
  }
}
