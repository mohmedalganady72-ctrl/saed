import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestModel {
  @JsonKey(name: 'academic_numbe')
  final String academicNumber;
  final String password;
  @JsonKey(name: 'device_id')
  final String deviceId;
  final String platform;
  @JsonKey(name: 'device_name')
  final String? deviceName;

  LoginRequestModel(
      {required this.academicNumber,
      required this.password,
      required this.deviceId,
      required this.platform,
      this.deviceName});

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}





// {
//   "academic_number": "441234567",
//   "password": "123456",
//   "device_id": "android-441234567-device",
//   "platform": "android",
//   "device_name": "Samsung S24"
// }