import 'package:flutter/material.dart';
import 'package:saed/saed_app.dart';

import 'core/constants/token_shared_prefrance_key.dart';
import 'core/di/injection.dart';

import 'core/services/shared_prefrance_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkUserLogin();
  await configureDependencies();
  runApp(const SaedApp());
}

checkUserLogin() async {
  final token = await SharedPrefranceService.getSecuredString(
      TokenSharedPrefracneKey.accessToken);
  final profileCompleted =
      await SharedPrefranceService.getBool(profileCompletedKey);
  isProfileCompleted = profileCompleted;
  if (token.toString().isNotEmpty) isLoggedInUser = true;

  if (profileCompleted) isProfileCompleted = true;
}
