import 'package:flutter/material.dart';
import 'package:saed/core/helper/extensions.dart';
import 'package:saed/core/theme/app_text_styles.dart';

class LableTextFiled extends StatelessWidget {
  String text;
  LableTextFiled({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.font14SemiBold(),
    );
  }
}
