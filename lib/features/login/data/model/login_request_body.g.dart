// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) =>
    LoginRequestBody(
      academicNumber: json['academic_number'] as String,
      password: json['password'] as String,
      deviceId: json['device_id'] as String,
      platform: json['platform'] as String,
      deviceName: json['device_name'] as String?,
    );

Map<String, dynamic> _$LoginRequestBodyToJson(LoginRequestBody instance) =>
    <String, dynamic>{
      'academic_number': instance.academicNumber,
      'password': instance.password,
      'device_id': instance.deviceId,
      'platform': instance.platform,
      'device_name': instance.deviceName,
    };
