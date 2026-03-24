import 'package:injectable/injectable.dart';
import 'package:saed/core/constants/api_endPoint.dart';
import 'package:saed/core/network/api_service.dart';
import 'package:saed/features/login/data/datasources/login_remot_data_sourc.dart';
import 'package:saed/features/login/data/model/login_request_body.dart';
import 'package:saed/features/login/data/model/login_response_model.dart';
import 'package:saed/features/login/domain/repository/login_repository.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepositoryImp implements ILoginRepository {
  final LoginRemotDataSource _loginRemotDataSource;

  LoginRepositoryImp({required LoginRemotDataSource loginRemotDataSource})
      : _loginRemotDataSource = loginRemotDataSource;

  @override
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _loginRemotDataSource.login(loginRequestBody);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
