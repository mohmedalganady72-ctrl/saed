import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saed/core/helper/extensions.dart';
import 'package:saed/core/helper/spacing.dart';
import 'package:saed/core/theme/app_text_styles.dart';
import 'package:saed/features/login/presentation/widget/academic_number_and_password.dart';
import 'package:saed/features/login/presentation/widget/login_bloc_listner.dart';
import 'package:saed/features/login/presentation/widget/logo_app.dart';

import '../../../../core/widget/app_text_button.dart';
import '../../logic/login_cubit.dart';
import '../widget/note_verification_number_academic.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(38),
                const LogoApp(),
                verticalSpace(16),
                Text(
                  // Login
                  context.localization.loginTitle,
                  style: AppTextStyles.font24BoldBlack(),
                ),
                verticalSpace(50),
                const AcademicNumberAndPassword(),
                verticalSpace(25),
                const NoteVerificationNumberAcademic(),
                verticalSpace(30),
                _buildLoginButton(context),
                // To manage the states of the login process (loading, success, error)
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return AppTextButton(
      // UI outpute : "Login"

      buttonText: context.localization.loginTextButton,

      onPressed: () {
        if (context.read<LoginCubit>().formKey.currentState!.validate()) {
          context.read<LoginCubit>().emitLoginStates();
        }
      },
    );
  }
}
