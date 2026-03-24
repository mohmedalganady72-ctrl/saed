import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:saed/core/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
  generateForDir: ['lib'],
)
Future<void> configureDependencies() async => getIt.init();
