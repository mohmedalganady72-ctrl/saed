import 'package:saed/core/constants/api_endPoint.dart';
import 'package:saed/core/network/api_service.dart';
import 'package:saed/features/login/data/model/login_request_body.dart';
import 'package:saed/features/login/data/model/login_response_model.dart';

import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/api_result.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.post(
          endpoint: ApiEndpoint.login, data: loginRequestBody.toJson());

      return ApiResult.success(LoginResponseModel.fromJson(response.data));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
