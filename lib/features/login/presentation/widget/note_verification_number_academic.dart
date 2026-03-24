import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/extensions.dart';

import '../../../../core/theme/app_text_styles.dart';

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
              context.localization.noteVerificationNumberAcademic,
              style: AppTextStyles.font12Medium(),
              softWrap: true,
            ))
      ],
    );
  }
}
