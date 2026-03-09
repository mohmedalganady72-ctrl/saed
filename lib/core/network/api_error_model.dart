class ApiErrorModel {
  String message;
  int? code;

  ApiErrorModel({required this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] as String? ?? '',
      code: json['status_code'] as int? ?? 0,
    );
  }
}


/*

{
    "success": false,
    "message": "Endpoint not found",
    "errors": null,
    "status_code": 404
}

9*/