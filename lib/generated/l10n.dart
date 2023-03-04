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

  /// `OK`
  String get defaultMessageSubmitBtnTitle {
    return Intl.message(
      'OK',
      name: 'defaultMessageSubmitBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Error Message`
  String get errorMessageTitle {
    return Intl.message(
      'Error Message',
      name: 'errorMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Success Message`
  String get successMessageTitle {
    return Intl.message(
      'Success Message',
      name: 'successMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Warning Message`
  String get warningMessageTitle {
    return Intl.message(
      'Warning Message',
      name: 'warningMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Info Message`
  String get infoMessageTitle {
    return Intl.message(
      'Info Message',
      name: 'infoMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Success Message`
  String get primaryMessageTitle {
    return Intl.message(
      'Success Message',
      name: 'primaryMessageTitle',
      desc: '',
      args: [],
    );
  }

  /// `{fieldName} can not be empty`
  String validationIsRequired(Object fieldName) {
    return Intl.message(
      '$fieldName can not be empty',
      name: 'validationIsRequired',
      desc: '',
      args: [fieldName],
    );
  }

  /// `{fieldName} is not a valid number`
  String validationIsNumber(Object fieldName) {
    return Intl.message(
      '$fieldName is not a valid number',
      name: 'validationIsNumber',
      desc: '',
      args: [fieldName],
    );
  }

  /// `{fieldName} is not a valid email`
  String validationIsEmail(Object fieldName) {
    return Intl.message(
      '$fieldName is not a valid email',
      name: 'validationIsEmail',
      desc: '',
      args: [fieldName],
    );
  }

  /// `Password is not matched with confirm password.`
  String get validationPasswordNotEqualsToConfirmPassword {
    return Intl.message(
      'Password is not matched with confirm password.',
      name: 'validationPasswordNotEqualsToConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `{fieldName} length should be greater than {requiredMinLength}`
  String validationMinLengthRequired(
      Object fieldName, Object requiredMinLength) {
    return Intl.message(
      '$fieldName length should be greater than $requiredMinLength',
      name: 'validationMinLengthRequired',
      desc: '',
      args: [fieldName, requiredMinLength],
    );
  }

  /// `{fieldName} length should be less than {requiredMaxLength}`
  String validationMaxLengthRequired(
      Object fieldName, Object requiredMaxLength) {
    return Intl.message(
      '$fieldName length should be less than $requiredMaxLength',
      name: 'validationMaxLengthRequired',
      desc: '',
      args: [fieldName, requiredMaxLength],
    );
  }

  /// `Email is not valid`
  String get validationEmailNotValid {
    return Intl.message(
      'Email is not valid',
      name: 'validationEmailNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number is not valid`
  String get validationPhoneNumberNotValid {
    return Intl.message(
      'Phone Number is not valid',
      name: 'validationPhoneNumberNotValid',
      desc: '',
      args: [],
    );
  }

  /// `SignIn To Continue`
  String get signinSignInToContinue {
    return Intl.message(
      'SignIn To Continue',
      name: 'signinSignInToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Test App`
  String get signinTestApp {
    return Intl.message(
      'Test App',
      name: 'signinTestApp',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get signinUserName {
    return Intl.message(
      'User Name',
      name: 'signinUserName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signinPassword {
    return Intl.message(
      'Password',
      name: 'signinPassword',
      desc: '',
      args: [],
    );
  }

  /// `Signin`
  String get signin {
    return Intl.message(
      'Signin',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Forgo Password`
  String get forgotPassword {
    return Intl.message(
      'Forgo Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `The username or password is incorrect`
  String get singinTheUsernameOrPasswordIsIncorrect {
    return Intl.message(
      'The username or password is incorrect',
      name: 'singinTheUsernameOrPasswordIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With Facebook`
  String get signSignInWithFacebook {
    return Intl.message(
      'Sign In With Facebook',
      name: 'signSignInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `- OR- `
  String get signinOR {
    return Intl.message(
      '- OR- ',
      name: 'signinOR',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get landingLogout {
    return Intl.message(
      'Logout',
      name: 'landingLogout',
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
