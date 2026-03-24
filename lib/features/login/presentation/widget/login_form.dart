import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/spacing.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widget/app_text_field_form.dart';

import '../../../../core/theme/colors_manager.dart';
import '../../../../core/widget/app_text_button.dart';

import '../cubit/login_cubit.dart';

import 'note_verification_number_academic.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _academicNumberController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isObscureText = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _academicNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localization.lableFildNumberAcadyme,
              style: AppTextStyles.font14SemiBold(),
            ),
            verticalSpace(10),
            _numberAcademicField(),
            verticalSpace(26),
            Text(
              context.localization.lableFildPassword,
              style: AppTextStyles.font14SemiBold(),
            ),
            verticalSpace(10),
            _passwordField(),
            verticalSpace(25),
            const NoteVerificationNumberAcademic(),
            verticalSpace(30),
            AppTextButton(
                buttonText: context.localization.loginTextButton,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<LoginCubit>().login(
                        academicNumber: _academicNumberController.text,
                        password: _passwordController.text);
                  }
                })
          ],
        ));
  }

  String? _validatorField(value) {
    if (value == null || value.isEmpty) {
      return context.localization.validatorNullFiled;
    }
    if (int.tryParse(value) == null) {
      return context.localization.validatorFiledNumber;
    }
    return null;
  }

  Widget _numberAcademicField() {
    return AppTextFieldForm(
      hintText: context.localization.hintTextFiledNumberAcadyme,
      controller: _academicNumberController,
      keyboardType: TextInputType.number,
      validator: (value) {
        return _validatorField(value);
      },
    );
  }

  Widget _passwordField() {
    return AppTextFieldForm(
      controller: _passwordController,
      keyboardType: TextInputType.number,
      hintText: context.localization.hintTextFiledPassword,
      isObscureText: _isObscureText,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _isObscureText = !_isObscureText;
          });
        },
        child: Icon(
          size: 24.sp,
          color: ColorsManager.moreLightGray,
          _isObscureText ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      validator: (value) {
        return _validatorField(value);
      },
    );
  }
}
