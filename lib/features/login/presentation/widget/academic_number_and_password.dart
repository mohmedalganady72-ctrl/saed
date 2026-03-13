import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saed/features/login/presentation/screen/login_screen.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widget/app_text_field_form.dart';

import '../../../../core/theme/colors_manager.dart';
import '../../../../core/widget/app_text_button.dart';

import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';
import 'lable_text_filed.dart';
import 'note_verification_number_academic.dart';

class AcademicNumberAndPassword extends StatefulWidget {
  const AcademicNumberAndPassword({super.key});

  @override
  State<AcademicNumberAndPassword> createState() =>
      _AcademicNumberAndPasswordState();
}

class _AcademicNumberAndPasswordState extends State<AcademicNumberAndPassword> {
  bool isObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // UI outpute : " Academic number"
            LableTextFiled(text: context.localization.lableFildNumberAcadyme),
            verticalSpace(10),
            AppTextFieldForm(
              // UI outpute : "Enter your academic number"
              hintText: context.localization.hintTextFiledNumberAcadyme,
              controller: context.read<LoginCubit>().academicNumberController,
              keyboardType: TextInputType.number,

              validator: (value) {
                if (value == null || value.isEmpty) {
                  // UI outpute : "Please enter your academic number"
                  return context.localization.validatorFiledNumberAcadyme;
                }
                if (int.tryParse(value) == null) {
                  return "Please enter a valid number from 0 to 9 only";
                }
                return null;
              },
            ),
            verticalSpace(26),

            // UI outpute : " password"
            LableTextFiled(text: context.localization.lableFildPassword),

            verticalSpace(10),
            AppTextFieldForm(
              controller: context.read<LoginCubit>().passwordController,
              // UI outpute : "Enter your password"
              keyboardType: TextInputType.number,

              hintText: context.localization.hintTextFiledPassword,
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  size: 24.sp,
                  color: ColorsManager.moreLightGray,
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  // UI outpute : "Please enter your password"
                  return context.localization.validatorFiledPassword;
                }
                if (int.tryParse(value) == null) {
                  return "Please enter a valid number from 0 to 9 only";
                }
                return null;
              },
            ),
          ],
        ));
  }
}
