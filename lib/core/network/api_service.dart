import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

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

@LazySingleton(as: ApiService)
class DioService implements ApiService {
  final Dio _dio;
  final NetworkInfo _networkInfo;

  DioService({required Dio dio, required NetworkInfo networkInfo})
      : _dio = dio,
        _networkInfo = networkInfo;

  @override
  Future<Response> delete(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    await _networkInfo.checkInternetConnection;
    return await _dio.delete(
      endpoint,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<Response> get(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    await _networkInfo.checkInternetConnection;
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
    await _networkInfo.checkInternetConnection;
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
    await _networkInfo.checkInternetConnection;
    return await _dio.put(
      endpoint,
      queryParameters: queryParameters,
      data: data,
    );
  }
}
