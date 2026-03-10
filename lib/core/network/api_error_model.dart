import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String message;
  int? code;

  ApiErrorModel({required this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}


/*

{
    "success": false,
    "message": "Endpoint not found",
    "errors": null,
    "status_code": 404
}

9*/