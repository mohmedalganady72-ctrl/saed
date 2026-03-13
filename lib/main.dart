import 'package:flutter/material.dart';
import 'package:saed/saed_app.dart';

import 'core/DI/dependances_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const SaedApp());
}
