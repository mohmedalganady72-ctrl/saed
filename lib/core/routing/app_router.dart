import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saed/core/error/not_found_screen.dart';
import 'package:saed/core/routing/routes.dart';
import 'package:saed/features/login/presentation/screen/login_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return null;
    }
  }

  static Route onUnknownRout(RouteSettings routeSettings) {
    return MaterialPageRoute(builder: (_) => const NotFoundScreen());
  }
}
