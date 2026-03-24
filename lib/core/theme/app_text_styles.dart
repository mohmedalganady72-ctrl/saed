import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saed/core/theme/colors_manager.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font24BoldBlack() {
    return TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.bold,
        color: Colors.black);
  }

  static TextStyle font16SemiBold() {
    return TextStyle(fontSize: 16.sp, fontWeight: FontWeightHelper.semiBold);
  }

  static TextStyle font14RegularGray() {
    return TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.hintColor);
  }

  static TextStyle font14RegularBlack() {
    return TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: Colors.black);
  }

  static TextStyle font16RegularBlack() {
    return TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.regular,
        color: Colors.black);
  }

  static TextStyle font12Medium() {
    return TextStyle(fontSize: 12.sp, fontWeight: FontWeightHelper.medium);
  }

  static TextStyle font14SemiBold() {
    return TextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.semiBold);
  }

  static TextStyle font18BoldWhite() {
    return TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.bold,
        color: Colors.white);
  }

  static TextStyle font16BoldWhite() {
    return TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.bold,
        color: Colors.white);
  }

  static TextStyle font16MediumBlack54() {
    return const TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 16,
      color: Colors.black54,
    );
  }
}
