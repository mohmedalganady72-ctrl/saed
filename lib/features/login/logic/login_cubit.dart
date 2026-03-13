import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saed/core/constants/token_shared_prefrance_key.dart';
import 'package:saed/features/login/data/model/login_response_model.dart';

import '../../../core/helper/shared_prefrance_helper.dart';
import '../../../core/network/dio_factory.dart';
import '../data/model/login_request_body.dart';
import '../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit({required LoginRepo loginRepo})
      : _loginRepo = loginRepo,
        super(const LoginState.initial());

  TextEditingController academicNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());

    final respons = await _loginRepo.login(LoginRequestBody(
        academicNumber: academicNumberController.text,
        password: passwordController.text,
        deviceId: "android-441234567-deviceA",
        platform: "android",
        deviceName: "Samsung s24"));

    respons.when(success: (loginResponseModel) async {
      // Save tokens to shared preferences
      saveTokensToSharedPreferences(loginResponseModel.data!);

      emit(const LoginState.success(LoginResponseModel));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message));
    });
  }
}
/*
/*


{
  "academic_number": "123456789",
  "password": "123456",
  "full_name": "Student Name",
  "device_id": "android-441234567-deviceA",
  "platform": "android",
  "device_name": "Samsung S24"

*/
*/

saveTokensToSharedPreferences(AuthData authData) async {
  // await SharedPrefranceHelper.setSecuredString(
  //     TokenSharedPrefracneKey.accessToken, authData.accessToken ?? '');
  // await SharedPrefranceHelper.setSecuredString(
  //     TokenSharedPrefracneKey.refreshToken, authData.refreshToken ?? '');
  await SharedPrefranceHelper.setData(
      TokenSharedPrefracneKey.accessToken, authData.accessToken ?? '');
  await SharedPrefranceHelper.setData(
      TokenSharedPrefracneKey.refreshToken, authData.refreshToken ?? '');
  await SharedPrefranceHelper.setData(
      TokenSharedPrefracneKey.accessTokenExpaire,
      authData.accessTokenExpiresIn ?? '');
  DioFactory.setTokenIntoHeaderAfterLogin(authData.accessToken ?? '');
}
