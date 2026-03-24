import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final bool? success;
  final String? message;
  final AuthData? data;
  @JsonKey(name: "status_code")
  final int? statusCode;

  LoginResponseModel({
    this.success,
    this.message,
    this.data,
    this.statusCode,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class AuthData {
  @JsonKey(name: "access_token")
  final String? accessToken;
  @JsonKey(name: "refresh_token")
  final String? refreshToken;
  @JsonKey(name: "token_type")
  final String? tokenType;
  @JsonKey(name: "access_token_expires_in")
  final int? accessTokenExpiresIn;

  @JsonKey(name: "refresh_token_expires_in")
  final int? refreshTokenExpiresIn;
  @JsonKey(name: "refresh_token_expires_at")
  final String? refreshTokenExpiresAt;
  final User? user;

  AuthData({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.accessTokenExpiresIn,
    this.refreshTokenExpiresIn,
    this.refreshTokenExpiresAt,
    this.user,
  });

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@JsonSerializable()
class User {
  final int? id;
  @JsonKey(name: "academic_number")
  final String? academicNumber;
  @JsonKey(name: "full_name")
  final String? fullName;
  @JsonKey(name: "profile_image")
  final String? profileImage;
  final String? bio;
  final String? department;
  @JsonKey(name: "academic_level")
  final String? academicLevel;
  @JsonKey(name: "is_notifications_enabled")
  final bool? isNotificationsEnabled;
  @JsonKey(name: "created_at")
  final String? createdAt;

  User({
    this.id,
    this.academicNumber,
    this.fullName,
    this.profileImage,
    this.bio,
    this.department,
    this.academicLevel,
    this.isNotificationsEnabled,
    this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/*

/*
{
  "success": true,
  "message": "Login successful",
  "data": {
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsImFjYWRlbWljX251bWJlciI6IjQ0MTIzNDU2NyIsInR5cGUiOiJhY2Nlc3MiLCJpYXQiOjE3NzMxNzc4NTIsImV4cCI6MTc3Mzc4MjY1Mn0.lRuVEE2IwDTMhBMPUp6zzt_Xjn9TuCPy1-zDjHmfLKI",
    "refresh_token": "CjvwuNSEu8lLbYmU7jAWJry9caTCWQ_jIcq_tPo5TNuz9h01WRroiziPmZ1fPI-HFMKmur6OQsElK8m-rDpo4w",
    "token_type": "Bearer",
    "access_token_expires_in": 604800,
    "refresh_token_expires_in": 2592000,
    "refresh_token_expires_at": "2026-04-10 00:24:12",
    "user": {
      "id": 3,
      "academic_number": "441234567",
      "full_name": "Student Name",
      "profile_image": null,
      "bio": "optional",
      "department": "optional",
      "academic_level": "optional",
      "is_notifications_enabled": true,
      "created_at": "2026-03-06 00:24:17"
    }
  },
  "status_code": 200
}
*/

*/