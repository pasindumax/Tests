import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'package:pasindu_sample_app/routes/router.gr.dart';

import 'package:pasindu_sample_app/store/environment_store/environmental.store.dart';

part 'splash.store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store {
  final EnvironmentalStore environmentalStore;

  _SplashStore({
    required this.environmentalStore,
  });

  /// *************************************************************************
  /// LIFECYCLE EVENTS - START
  ///**************************************************************************/

  @action
  Future<void> init(BuildContext context) async {
    context.router.push(const SignInPageRoute());
  }

  @action
  void destroy(BuildContext context) {}

  /// *************************************************************************
  /// LIFECYCLE EVENTS - END
  ///**************************************************************************/

}
