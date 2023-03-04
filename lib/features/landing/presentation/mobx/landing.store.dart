import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/firebase_logout/firebase_logout.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/get_firebase_data/get_firebase_data.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/get_news_details/get_news_details.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';
import 'package:pasindu_sample_app/routes/router.gr.dart';

import 'package:pasindu_sample_app/store/environment_store/environmental.store.dart';

part 'landing.store.g.dart';

class LandingStore = _LandingStore with _$LandingStore;

abstract class _LandingStore with Store {
  final EnvironmentalStore environmentalStore;
  final FirebaseLogoutUseCase firebaseLogoutUseCase;
  final GetNewsDetailsUseCase getNewsDetailsUseCase;
  final GetFirebaseDataUseCase getFirebaseDataUseCase;

  _LandingStore({
    required this.environmentalStore,
    required this.getNewsDetailsUseCase,
    required this.firebaseLogoutUseCase,
    required this.getFirebaseDataUseCase,
  });

  @observable
  bool isLoading = false;
  @observable
  String? commonError;

  @action
  Future<void> setCommonStatus({
    required bool loading,
    String? error,
  }) async {
    isLoading = loading;
    if (!loading) {
      commonError = error;
    }
  }

  /// *************************************************************************
  /// LIFECYCLE EVENTS - START
  ///**************************************************************************/

  @action
  Future<void> init(BuildContext context) async {
    getNews();
    getFBData();
  }

  @action
  void destroy(BuildContext context) {}

  @observable
  List<News>? newstList = [];

  @action
  Future<void> getNews() async {
    try {
      setCommonStatus(loading: true, error: null);
      final news = await getNewsDetailsUseCase(NoParams());

      //await Future.delayed(Duration(seconds: 5));

      news.fold((l) {
        setCommonStatus(loading: false, error: l.errorMessage);
      }, (r) {
        setCommonStatus(
          loading: false,
        );
        newstList = r;
      });
    } on Exception catch (e) {
      setCommonStatus(loading: false, error: e.toString());
    }
  }

  /// *************************************************************************
  /// LIFECYCLE EVENTS - END
  ///**************************************************************************/

  /// *************************************************************************
  /// FACEBOOK EVENTS - START
  ///**************************************************************************/

  @observable
  Facebook? facebook;

  @action
  Future<void> getFBData() async {
    try {
      setCommonStatus(loading: true, error: null);
      final news = await getFirebaseDataUseCase(NoParams());

      //await Future.delayed(Duration(seconds: 5));

      news.fold((l) {
        setCommonStatus(loading: false, error: l.errorMessage);
      }, (r) {
        setCommonStatus(
          loading: false,
        );
        facebook = r;
      });
    } on Exception catch (e) {
      setCommonStatus(loading: false, error: e.toString());
    }
  }

  @action
  Future<void> getFBLogout(BuildContext context) async {
    try {
      setCommonStatus(loading: true, error: null);
      final news = await getNewsDetailsUseCase(NoParams());

      //await Future.delayed(Duration(seconds: 5));

      news.fold((l) {
        setCommonStatus(loading: false, error: l.errorMessage);
      }, (r) {
        setCommonStatus(
          loading: false,
        );
        navigateToLandingPage(context);
      });
    } on Exception catch (e) {
      setCommonStatus(loading: false, error: e.toString());
    }
  }

  /// *************************************************************************
  /// FACEBOOK EVENTS - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE NAVIGATION - START
  ///**************************************************************************/

  @action
  void navigateToLandingPage(BuildContext context) {
    context.router.push(const SignInPageRoute());
  }

  /// *************************************************************************
  /// HANDLE NAVIGATION - END
  ///**************************************************************************/
}
