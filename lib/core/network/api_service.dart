import 'package:dio/dio.dart';
import 'package:saed/core/network/network_info.dart';

abstract class ApiService {
  Future<Response> get(
      {required String endpoint, Map<String, dynamic>? queryParameters});
  Future<Response> post(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data});
  Future<Response> put(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data});
  Future<Response> delete(
      {required String endpoint, Map<String, dynamic>? queryParameters});
}

class DioService implements ApiService {
  final Dio _dio;

  DioService({required Dio dio}) : _dio = dio;

  @override
  Future<Response> delete(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    return await _dio.delete(
      endpoint,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<Response> get(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<Response> post(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data}) async {
    await hasInternetConnection();
    return await _dio.post(
      endpoint,
      queryParameters: queryParameters,
      data: data,
    );
  }

  @override
  Future<Response> put(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data}) async {
    return await _dio.put(
      endpoint,
      queryParameters: queryParameters,
      data: data,
    );
  }
}
