import '../../../../core/network/api_result.dart';
import '../../data/model/login_request_body.dart';
import '../../data/model/login_response_model.dart';

abstract class ILoginRepository {
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody);
}
