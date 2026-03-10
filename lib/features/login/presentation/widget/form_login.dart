import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widget/app_text_field_form.dart';

import '../../../../core/theme/colors_manager.dart';
import '../../../../core/widget/app_text_button.dart';

import 'lable_text_filed.dart';
import 'note_verification_number_academic.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // section number academic
        // UI outpute : " Academic number"
        LableTextFiled(text: context.localization.lableFildNumberAcadyme),
        verticalSpace(10),
        AppTextFieldForm(
          // UI outpute : "Enter your academic number"
          hintText: context.localization.hintTextFiledNumberAcadyme,
          keyboardType: TextInputType.number,

          validator: (value) {
            if (value == null || value.isEmpty) {
              // UI outpute : "Please enter your academic number"
              return context.localization.validatorFiledNumberAcadyme;
            }
            return null;
          },
        ),
        verticalSpace(26),
        // section password

        // UI outpute : " password"
        LableTextFiled(text: context.localization.lableFildPassword),

        verticalSpace(10),
        AppTextFieldForm(
          // UI outpute : "Enter your password"
          keyboardType: TextInputType.number,

          hintText: context.localization.hintTextFiledPassword,

          suffixIcon: GestureDetector(
            onTap: () {},
            child: Icon(
              size: 24.sp,
              color: ColorsManager.moreLightGray,
              Icons.visibility,
            ),
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              // UI outpute : "Please enter your password"
              return context.localization.validatorFiledPassword;
            }
            return null;
          },
        ),

        verticalSpace(25),
        const NoteVerificationNumberAcademic(),

        verticalSpace(30),

        AppTextButton(
          // UI outpute : "Login"

          buttonText: context.localization.loginTextButton,

          onPressed: () {},
        )
      ],
    ));
  }
}
