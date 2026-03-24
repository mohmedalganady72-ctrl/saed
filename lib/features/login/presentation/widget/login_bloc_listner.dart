import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saed/core/helper/extensions.dart';
import 'package:saed/core/theme/colors_manager.dart';
import 'package:saed/core/widget/app_dialog,.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widget/logo_loader.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // const SvgDrawLoader();

            showDialog(
                barrierColor: Colors.black.withOpacity(0.1),
                barrierDismissible: false,
                context: context,
                builder: (context) => const Center(
                      child: SvgDrawLoader(
                        color: Colors.black,
                      ),
                    ));
          },
          success: (loginResponse) {
            context.pop();
            // go to another screen
            context.pushReplacementNamed(Routes.completProfileScreen);
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
        barrierColor: Colors.black.withOpacity(0.1),
        barrierDismissible: false,
        context: context,
        builder: (context) => AppDialog(error,
            colorIconShadow: ColorsManager.errorShadow,
            colorIconBackground: ColorsManager.error,
            iconData: Icons.close,
            title: context.localization.sory,
            textButton: context.localization.ok));
  }
}

/*
AppDialog(error,
            colorIconShadow: const Color(0xFFDEE6F3),
            colorIconBackground: const Color(0xFF2F6BFF),
            iconData: Icons.check,
            title: "خطاء",
            textButton: "حسنا"));

*/
