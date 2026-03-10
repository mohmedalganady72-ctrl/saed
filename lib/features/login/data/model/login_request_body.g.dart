// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    LoginRequestModel(
      academicNumber: json['academic_numbe'] as String,
      password: json['password'] as String,
      deviceId: json['device_id'] as String,
      platform: json['platform'] as String,
      deviceName: json['device_name'] as String?,
    );

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) =>
    <String, dynamic>{
      'academic_numbe': instance.academicNumber,
      'password': instance.password,
      'device_id': instance.deviceId,
      'platform': instance.platform,
      'device_name': instance.deviceName,
    };
