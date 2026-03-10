import 'package:dio/dio.dart';

import 'api_error_handler.dart';
import 'api_result.dart';

abstract class ApiService {
  Future<ApiResult<T>> get<T>(
      {String endpoint, Map<String, dynamic>? queryParameters});
  Future<ApiResult<T>> post<T>(String endpoint,
      {Map<String, dynamic>? queryParameters, dynamic data});
  Future<ApiResult<T>> put<T>(String endpoint,
      {Map<String, dynamic>? queryParameters, dynamic data});
  Future<ApiResult<T>> delete<T>(String endpoint,
      {Map<String, dynamic>? queryParameters});
}

class DioService implements ApiService {
  final Dio _dio;

  DioService({required Dio dio}) : _dio = dio;

  @override
  Future<ApiResult<T>> delete<T>(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete(
        endpoint,
        queryParameters: queryParameters,
      );

      return ApiResult.success(response.data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<T>> get<T>(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );

      return ApiResult.success(response.data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<T>> post<T>(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.post(
        endpoint,
        queryParameters: queryParameters,
      );

      return ApiResult.success(response.data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<T>> put<T>(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
