import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/token_shared_prefrance_key.dart';
import '../../../../core/network/dio_factory.dart';

import '../../../../core/services/shared_prefrance_service.dart';
import '../../data/model/login_response_model.dart';
import '../../domain/usecase/login_usecase.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;
  LoginCubit({required LoginUseCase loginUseCase})
      : _loginUseCase = loginUseCase,
        super(const LoginState.initial());

  Future<void> login(
      {required String academicNumber, required String password}) async {
    emit(const LoginState.loading());
    if (kDebugMode) {
      const Duration(seconds: 20);
    }

    final respons = await _loginUseCase.call(academicNumber, password);
    respons.when(success: (loginResponseModel) async {
      // Save tokens to shared preferences
      saveTokensToSharedPreferences(loginResponseModel.data!);
      // then mark the profile as completed to control app routing,
      await SharedPrefranceService.setData(profileCompletedKey, true);
      emit(const LoginState.success(LoginResponseModel));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message));
    });
  }
}

saveTokensToSharedPreferences(AuthData authData) async {
  await SharedPrefranceService.setSecuredString(
      TokenSharedPrefracneKey.accessToken, authData.accessToken ?? '');
  await SharedPrefranceService.setSecuredString(
      TokenSharedPrefracneKey.refreshToken, authData.refreshToken ?? '');

  await SharedPrefranceService.setData(
      TokenSharedPrefracneKey.accessTokenExpaire,
      authData.accessTokenExpiresIn ?? '');
  DioFactory.setTokenIntoHeaderAfterLogin(authData.accessToken ?? '');
}
