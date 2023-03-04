import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/firebase_login/firebase_login.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/get_firebase_data/get_firebase_data.dart';

import 'package:pasindu_sample_app/core/domain/entities/auth_token.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';
import 'package:pasindu_sample_app/features/auth/signin/presentation/mobx/sign_in.form.error_state.dart';
import 'package:pasindu_sample_app/generated/l10n.dart';
import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';

import 'package:pasindu_sample_app/helpers/validator/validation_configs/required_validation_config.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_field.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_result.dart';
import 'package:pasindu_sample_app/helpers/validator/validator.dart';
import 'package:pasindu_sample_app/routes/router.gr.dart';

import 'package:pasindu_sample_app/store/auth_store/auth.store.dart';
part 'sign_in.store.g.dart';

class SignInStore = _SignInStore with _$SignInStore;

abstract class _SignInStore with Store {
  final Validator validator;
  final FacebookAuth facebookAuth;
  final AuthStore authStore;
  final FirebaseLoginUseCase firebaseLoginUseCase;

  final ConnectivityHelper connectivityHelper;
  _SignInStore({
    required this.validator,
    required this.facebookAuth,
    required this.connectivityHelper,
    required this.firebaseLoginUseCase,
    required this.authStore,
  });

  final List<ReactionDisposer> _disposers = [];

  /// *************************************************************************
  /// LIFECYCLE EVENTS - START
  ///**************************************************************************/

  @action
  void init(BuildContext context) {
    setMobileNumberValidator(context);
    setPasswordValidator(context);
  }

  @action
  Future<void> initUI(BuildContext context) async {
    final isConnected = await connectivityHelper.isConnected();
    if (!isConnected) {
      resetConnectionLandingStatus();
      setConnectionLandingStatus(
          loading: false, error: 'Please connect active internet connection');

      return;
    }
    error.mobileNumber =
        S.of(context).validationIsRequired(S.of(context).signinUserName);

    error.password =
        S.of(context).validationIsRequired(S.of(context).signinPassword);
  }

  @action
  void destroy(BuildContext context) {
    for (var disposer in _disposers) {
      disposer();
    }
  }

  /// *************************************************************************
  /// LIFECYCLE EVENTS - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE  CONNECTION ALERT COMMEN STATUS - START
  ///**************************************************************************/

  @observable
  bool? isConnectionLoading;

  @observable
  String? getConnectionError;

  @observable
  String? getConnectionSuccess;

  @action
  void setConnectionLandingStatus({
    bool loading = false,
    String? error,
    String? success,
  }) {
    isConnectionLoading = loading;
    if (!loading) {
      getConnectionError = error;
      getConnectionSuccess = success;
    }
  }

  @action
  void resetConnectionLandingStatus() {
    getConnectionError = null;
    getConnectionSuccess = null;
  }

  /// *************************************************************************
  /// HANDLE ALERT CONNECTION STATUS - END
  ///**************************************************************************/
  /// *************************************************************************
  /// HANDLE FORM - START
  ///**************************************************************************/

  @observable
  String? userName = '';

  @observable
  String? password = '';

  final SignInFormErrorState error = SignInFormErrorState();

  @action
  void setMobileNumber(String? value) {
    userName = value;
  }

  //Set password
  @action
  void setPassword(String? value) {
    password = value;
  }

  //Set username validator
  void setMobileNumberValidator(BuildContext context) {
    _disposers.add(reaction((_) => userName, (String? newValue) {
      var validationList = <ValidationField>[
        ValidationField(
            fieldName: S.of(context).signinUserName,
            value: newValue,
            validationConfigList: [
              RequiredValidationConfig(
                  customErrorMessage: S
                      .of(context)
                      .validationIsRequired(S.of(context).signinUserName)),
            ]),
      ];
      var result = validator.validateFields(validationList);
      error.mobileNumber = !result.isValid ? result.message : '';
    }));
  }

//Set password validator
  void setPasswordValidator(BuildContext context) {
    _disposers.add(reaction((_) => password, (String? newValue) {
      var validationList = <ValidationField>[
        ValidationField(
            fieldName: S.of(context).signinPassword,
            value: newValue,
            validationConfigList: [
              RequiredValidationConfig(
                customErrorMessage: S
                    .of(context)
                    .validationIsRequired(S.of(context).signinPassword),
              ),
            ]),
      ];
      var result = validator.validateFields(validationList);
      error.password = !result.isValid ? result.message : '';
    }));
  }

  ValidationResult validateForm(BuildContext context) {
    var validationList = <ValidationField>[
      ValidationField(
          fieldName: S.of(context).signinUserName,
          value: userName,
          validationConfigList: [
            RequiredValidationConfig(
              customErrorMessage: S
                  .of(context)
                  .validationIsRequired(S.of(context).signinUserName),
            ),
          ]),
      ValidationField(
          fieldName: S.of(context).signinPassword,
          value: password,
          validationConfigList: [
            RequiredValidationConfig(
              customErrorMessage: S
                  .of(context)
                  .validationIsRequired(S.of(context).signinPassword),
            ),
          ]),
    ];
    return validator.validateFields(validationList);
  }

  /// *************************************************************************
  /// HANDLE FORM - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE AUTHENTICATION - START
  ///**************************************************************************/

  @observable
  bool isLoading = false;
  @observable
  String? authenticationError;

  @action
  Future<void> setSignInStatus(
      {required bool loading, String? error, AuthToken? authToken}) async {
    isLoading = loading;
    if (!loading) {
      authenticationError = error;
    }
  }

  @action
  Future<void> signIn(BuildContext context) async {
    setSignInStatus(loading: true, error: null);
    await Future.delayed(const Duration(milliseconds: 800));

    /// TODO: manually password validation

    if (userName == 'admin' && password == 'admin') {
      setSignInStatus(
        loading: false,
      );
      navigateToLandingPage(context);
    } else {
      setSignInStatus(
          loading: false,
          error: S.of(context).singinTheUsernameOrPasswordIsIncorrect);
    }
  }

  /// *************************************************************************
  /// HANDLE AUTHENTICATION - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE AUTHENTICATION - START
  ///**************************************************************************/

  @action
  Future<void> faceBooksignIn(BuildContext context) async {
    requestPermition();
    try {
      setSignInStatus(loading: true, error: null);
      final authTokenResponse = await firebaseLoginUseCase(NoParams());

      //await Future.delayed(Duration(seconds: 5));

      authTokenResponse.fold((l) {
        setSignInStatus(loading: false, error: l.errorMessage);
      }, (r) {
        setSignInStatus(
          loading: false,
        );
        authStore.setAccessToken(r?.accessToken);
        navigateToLandingPage(context);
      });
    } on Exception catch (e) {
      setSignInStatus(loading: false, error: e.toString());
    }
  }

  Future<void> requestPermition() async {
    await facebookAuth.permissions;
  }

  /// *************************************************************************
  /// HANDLE AUTHENTICATION - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE NAVIGATION - START
  ///**************************************************************************/

  @action
  void navigateToLandingPage(BuildContext context) {
    context.router.replaceAll([const LandingPageRoute()]);
  }

  @action
  void exitApp(BuildContext context) {
    SystemNavigator.pop();
  }

  /// *************************************************************************
  /// HANDLE NAVIGATION - END
  ///**************************************************************************/
}
