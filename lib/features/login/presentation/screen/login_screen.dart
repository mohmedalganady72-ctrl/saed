import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saed/core/helper/extensions.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../widget/login_bloc_listner.dart';
import '../widget/login_form.dart';
import '../widget/logo_app.dart';

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
                const LoginForm(),

                // To manage the states of the login process (loading, success, error)
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
