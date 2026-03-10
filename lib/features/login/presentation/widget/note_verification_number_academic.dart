import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saed/core/helper/extensions.dart';
import 'package:saed/core/theme/app_text_styles.dart';

import '../../../../core/theme/colors_manager.dart';

class NoteVerificationNumberAcademic extends StatelessWidget {
  const NoteVerificationNumberAcademic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.info_outline,
          size: 20.sp,
        ),
        SizedBox(
          width: 8.w,
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Text(
              // UI outpute : "Verification is done using your academic number"
              context.localization.noteVerificationNumberAcademic,
              style: AppTextStyles.font12Medium(),

              softWrap: true,
            ))
      ],
    );
  }
}
