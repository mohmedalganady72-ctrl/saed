import 'package:injectable/injectable.dart';
import 'package:saed/core/di/injection.dart';
import 'package:saed/core/services/device_info_service.dart';
import 'package:saed/core/network/api_result.dart';
import 'package:saed/features/login/data/model/login_response_model.dart';

import '../../data/model/login_request_body.dart';
import '../../data/repository/login_repository.dart';
import '../repository/login_repository.dart';

@lazySingleton
class LoginUseCase {
  final ILoginRepository _loginRepository;
  final DeviceInfoService _deviceInfoHelper;

  LoginUseCase(
      {required ILoginRepository loginRepository,
      required DeviceInfoService deviceInfoHelper})
      : _loginRepository = loginRepository,
        _deviceInfoHelper = deviceInfoHelper;

  Future<ApiResult<LoginResponseModel>> call(
      String academicNumber, String password) async {
    final deviceInfo = await _deviceInfoHelper.getDeviceInfo();
    return await _loginRepository.login(LoginRequestBody(
        academicNumber: academicNumber,
        password: password,
        deviceId: deviceInfo["deviceId"] ?? "",
        platform: deviceInfo["platform"] ?? "",
        deviceName: deviceInfo["deviceName"] ?? ""));
  }
}
