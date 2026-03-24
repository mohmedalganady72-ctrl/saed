import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:uuid/uuid.dart';
import 'package:injectable/injectable.dart';

import 'shared_prefrance_service.dart';

@lazySingleton
class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfo;

  final Uuid _uuid;
  DeviceInfoService({required Uuid uuid, required DeviceInfoPlugin deviceInfo})
      : _deviceInfo = deviceInfo,
        _uuid = uuid;

  static const _deviceIdKey = "DEVICE_ID";

  Future<String> _getDeviceId() async {
    String? deviceId =
        await SharedPrefranceService.getSecuredString(_deviceIdKey);
    if (deviceId == null || deviceId.isEmpty) {
      deviceId = _uuid.v4();
      await SharedPrefranceService.setSecuredString(_deviceIdKey, deviceId);
    }

    return deviceId;
  }

  Future<Map<String, String>> getDeviceInfo() async {
    final deviceId = await _getDeviceId();

    if (Platform.isAndroid) {
      final android = await _deviceInfo.androidInfo;
      return {
        "deviceId": deviceId,
        "deviceName": "${android.brand} ${android.model}",
        "platform": "android",
      };
    } else if (Platform.isIOS) {
      final ios = await _deviceInfo.iosInfo;
      return {
        "deviceId": deviceId,
        "deviceName": ios.name ?? "iOS Device",
        "platform": "ios",
      };
    } else {
      return {
        "deviceId": deviceId,
        "deviceName": "unknown",
        "platform": "unknown",
      };
    }
  }
}
