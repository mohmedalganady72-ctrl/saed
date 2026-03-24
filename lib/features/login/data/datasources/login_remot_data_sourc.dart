import 'package:injectable/injectable.dart';

import '../../../../core/constants/api_endPoint.dart';

import '../../../../core/network/api_service.dart';
import '../model/login_request_body.dart';
import '../model/login_response_model.dart';

@LazySingleton()
class LoginRemotDataSource {
  final ApiService _apiService;

  LoginRemotDataSource({required ApiService apiService})
      : _apiService = apiService;

  Future<LoginResponseModel> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.post(
          endpoint: ApiEndpoint.login, data: loginRequestBody.toJson());
      return LoginResponseModel.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }
}
