// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AuthData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

AuthData _$AuthDataFromJson(Map<String, dynamic> json) => AuthData(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      tokenType: json['tokenType'] as String?,
      accessTokenExpiresIn: (json['accessTokenExpiresIn'] as num?)?.toInt(),
      refreshTokenExpiresIn: (json['refreshTokenExpiresIn'] as num?)?.toInt(),
      refreshTokenExpiresAt: json['refreshTokenExpiresAt'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthDataToJson(AuthData instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'accessTokenExpiresIn': instance.accessTokenExpiresIn,
      'refreshTokenExpiresIn': instance.refreshTokenExpiresIn,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      academicNumber: json['academicNumber'] as String?,
      fullName: json['fullName'] as String?,
      profileImage: json['profileImage'] as String?,
      bio: json['bio'] as String?,
      department: json['department'] as String?,
      academicLevel: json['academicLevel'] as String?,
      isNotificationsEnabled: json['isNotificationsEnabled'] as bool?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'academicNumber': instance.academicNumber,
      'fullName': instance.fullName,
      'profileImage': instance.profileImage,
      'bio': instance.bio,
      'department': instance.department,
      'academicLevel': instance.academicLevel,
      'isNotificationsEnabled': instance.isNotificationsEnabled,
      'createdAt': instance.createdAt,
    };
