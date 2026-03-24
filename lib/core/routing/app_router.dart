import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:saed/features/login/presentation/cubit/login_cubit.dart';

import '../../features/login/presentation/screen/login_screen.dart';

import '../di/injection.dart';
import '../error/not_found_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (_) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));

      default:
        return null;
    }
  }

  static Route onUnknownRout(RouteSettings routeSettings) {
    return MaterialPageRoute(builder: (_) => const NotFoundScreen());
  }
}
