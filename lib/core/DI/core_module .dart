import 'package:device_info_plus/device_info_plus.dart';

import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:uuid/uuid.dart';
import '../network/dio_factory.dart';

@module
abstract class CoreModule {
  @lazySingleton
  Dio get dio => DioFactory.getDio();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();
  @lazySingleton
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();
  @lazySingleton
  Uuid get uuid => const Uuid();
}
