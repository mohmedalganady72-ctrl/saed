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

  /// `Please enter data this field`
  String get validatorNullFiled {
    return Intl.message(
      'Please enter data this field',
      name: 'validatorNullFiled',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid number from 0 to 9 only`
  String get validatorFiledNumber {
    return Intl.message(
      'Please enter a valid number from 0 to 9 only',
      name: 'validatorFiledNumber',
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

  /// `Unable to process the request. Please check your input.`
  String get badRequestError {
    return Intl.message(
      'Unable to process the request. Please check your input.',
      name: 'badRequestError',
      desc: '',
      args: [],
    );
  }

  /// `No data available at the moment.`
  String get noContent {
    return Intl.message(
      'No data available at the moment.',
      name: 'noContent',
      desc: '',
      args: [],
    );
  }

  /// `You do not have permission to access this content.`
  String get forbiddenError {
    return Intl.message(
      'You do not have permission to access this content.',
      name: 'forbiddenError',
      desc: '',
      args: [],
    );
  }

  /// `Session expired. Please log in again.`
  String get unauthorizedError {
    return Intl.message(
      'Session expired. Please log in again.',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `We couldn’t find what you’re looking for.`
  String get notFoundError {
    return Intl.message(
      'We couldn’t find what you’re looking for.',
      name: 'notFoundError',
      desc: '',
      args: [],
    );
  }

  /// `Data conflict occurred. Please try again.`
  String get conflictError {
    return Intl.message(
      'Data conflict occurred. Please try again.',
      name: 'conflictError',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. We’re working on it.`
  String get internalServerError {
    return Intl.message(
      'An unexpected error occurred. We’re working on it.',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again later.`
  String get unknownError {
    return Intl.message(
      'Something went wrong. Please try again later.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `The request took too long. Please try again.`
  String get timeoutError {
    return Intl.message(
      'The request took too long. Please try again.',
      name: 'timeoutError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get defaultError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'defaultError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load saved data.`
  String get cacheError {
    return Intl.message(
      'Failed to load saved data.',
      name: 'cacheError',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection. Please check your network.`
  String get noInternetError {
    return Intl.message(
      'No internet connection. Please check your network.',
      name: 'noInternetError',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get loadingMessage {
    return Intl.message(
      'Please wait...',
      name: 'loadingMessage',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get retryAgainMessage {
    return Intl.message(
      'Try again',
      name: 'retryAgainMessage',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `sory`
  String get sory {
    return Intl.message(
      'sory',
      name: 'sory',
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
