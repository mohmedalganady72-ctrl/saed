import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  @JsonKey(name: 'academic_number')
  final String academicNumber;
  final String password;
  @JsonKey(name: 'device_id')
  final String deviceId;
  final String platform;
  @JsonKey(name: 'device_name')
  final String? deviceName;

  LoginRequestBody(
      {required this.academicNumber,
      required this.password,
      required this.deviceId,
      required this.platform,
      this.deviceName});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
