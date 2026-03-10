// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Academic number`
  String get lableFildNumberAcadyme {
    return Intl.message(
      'Academic number',
      name: 'lableFildNumberAcadyme',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter academic number`
  String get hintTextFiledNumberAcadyme {
    return Intl.message(
      'Enter academic number',
      name: 'hintTextFiledNumberAcadyme',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get lableFildPassword {
    return Intl.message(
      'Password',
      name: 'lableFildPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get hintTextFiledPassword {
    return Intl.message(
      'Enter password',
      name: 'hintTextFiledPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter academic number`
  String get validatorFiledNumberAcadyme {
    return Intl.message(
      'Please enter academic number',
      name: 'validatorFiledNumberAcadyme',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get validatorFiledPassword {
    return Intl.message(
      'Please enter password',
      name: 'validatorFiledPassword',
      desc: '',
      args: [],
    );
  }

  /// `Verification is done using your academic number`
  String get noteVerificationNumberAcademic {
    return Intl.message(
      'Verification is done using your academic number',
      name: 'noteVerificationNumberAcademic',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTextButton {
    return Intl.message(
      'Login',
      name: 'loginTextButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
