import 'dart:async';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pasindu_sample_app/app.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/injection_container.dart' as app_di;
import 'package:flutter/material.dart';

void mainCommon(FlavourConfig envConfig) async {
  runZonedGuarded<Future<void>>(() async {
    // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await app_di.setup();

    runApp(App(envConfig: envConfig));
  }, (error, stack) => {});
}
