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
      statusCode: (json['status_code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'status_code': instance.statusCode,
    };

AuthData _$AuthDataFromJson(Map<String, dynamic> json) => AuthData(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String?,
      accessTokenExpiresIn: (json['access_token_expires_in'] as num?)?.toInt(),
      refreshTokenExpiresIn:
          (json['refresh_token_expires_in'] as num?)?.toInt(),
      refreshTokenExpiresAt: json['refresh_token_expires_at'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthDataToJson(AuthData instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'access_token_expires_in': instance.accessTokenExpiresIn,
      'refresh_token_expires_in': instance.refreshTokenExpiresIn,
      'refresh_token_expires_at': instance.refreshTokenExpiresAt,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      academicNumber: json['academic_number'] as String?,
      fullName: json['full_name'] as String?,
      profileImage: json['profile_image'] as String?,
      bio: json['bio'] as String?,
      department: json['department'] as String?,
      academicLevel: json['academic_level'] as String?,
      isNotificationsEnabled: json['is_notifications_enabled'] as bool?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'academic_number': instance.academicNumber,
      'full_name': instance.fullName,
      'profile_image': instance.profileImage,
      'bio': instance.bio,
      'department': instance.department,
      'academic_level': instance.academicLevel,
      'is_notifications_enabled': instance.isNotificationsEnabled,
      'created_at': instance.createdAt,
    };
