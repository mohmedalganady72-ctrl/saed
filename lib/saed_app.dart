import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:saed/generated/l10n.dart';

import 'core/constants/token_shared_prefrance_key.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/colors_manager.dart';

class SaedApp extends StatelessWidget {
  const SaedApp({super.key});

  @override
  Widget build(BuildContext context) {
    _systemChrom;

    return ScreenUtilInit(
        // sized in figma design
        designSize: const Size(402, 874),
        minTextAdapt: true,
        child: MaterialApp(
          locale: const Locale("ar"),
          localizationsDelegates: _localizationsDelegates,
          supportedLocales: S.delegate.supportedLocales,
          theme: _themeData,
          debugShowCheckedModeBanner: false,
          initialRoute: !isLoggedInUser
              ? Routes.loginScreen
              : isProfileCompleted
                  ? Routes.homeScreen
                  : Routes.completProfileScreen,
          onGenerateRoute: AppRouter.generateRoute,
          onUnknownRoute: AppRouter.onUnknownRout,
        ));
  }
}

Iterable<LocalizationsDelegate<dynamic>> get _localizationsDelegates => [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];

void get _systemChrom =>
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));

ThemeData get _themeData => ThemeData(
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorsManager.primaryColor),
    colorScheme:
        // const ColorScheme.light(background: ColorsManager.backgroundScreen),
        ColorScheme.fromSeed(
            seedColor: ColorsManager.primaryColor,
            background: ColorsManager.backgroundScreen),
    fontFamily: "Cairo",
    primaryColor: ColorsManager.primaryColor);
