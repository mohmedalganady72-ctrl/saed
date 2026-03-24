import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/assete_constant.dart';
import '../../../../core/theme/colors_manager.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: 70.w,
        height: 74.h,
        decoration: BoxDecoration(
            color: ColorsManager.backgroundLogoColor,
            borderRadius: BorderRadius.circular(24)),
      ),
      SvgPicture.asset(
        colorFilter:
            const ColorFilter.mode(ColorsManager.logoColor, BlendMode.srcIn),
        SvgConstant.logoApp,
        width: 35.w,
        height: 30.h,
      )
    ]);
  }
}
