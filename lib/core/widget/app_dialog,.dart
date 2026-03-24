import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/size_constant.dart';
import '../theme/app_text_styles.dart';
import '../theme/colors_manager.dart';

class AppDialog extends StatelessWidget {
  final String _title;
  final String? _subtitle;
  final String _textButton;
  final IconData _iconData;
  final Color _colorIconBackground;
  final Color _colorIconShadow;
  final Color? _colorButton;

  const AppDialog(
    String subtitle, {
    super.key,
    required Color colorIconShadow,
    required Color colorIconBackground,
    required IconData iconData,
    required String title,
    required String textButton,
    Color? colorButton,
  })  : _subtitle = subtitle,
        _textButton = textButton,
        _title = title,
        _iconData = iconData,
        _colorIconShadow = colorIconShadow,
        _colorIconBackground = colorIconBackground,
        _colorButton = colorButton;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConstant.raodiosDialoge),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.w),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(SizeConstant.raodiosDialoge),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: _colorIconShadow,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: _colorIconBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _iconData,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Text(_title, style: AppTextStyles.font24BoldBlack()),
            SizedBox(height: 10.h),
            Text(_subtitle ?? "",
                textAlign: TextAlign.center,
                style: AppTextStyles.font16MediumBlack54()),
            SizedBox(height: 25.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _colorButton ?? ColorsManager.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(SizeConstant.radiosButton),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  _textButton,
                  style: AppTextStyles.font16BoldWhite(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
