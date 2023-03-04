import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/generated/l10n.dart';
import 'package:pasindu_sample_app/injection_container.dart';
import 'package:pasindu_sample_app/routes/router.gr.dart';

import 'package:pasindu_sample_app/store/environment_store/environmental.store.dart';
import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatefulWidget {
  //final FlutterI18nDelegate flutterI18nDelegate;
  final FlavourConfig? envConfig;

  const App({
    Key? key,
    required this.envConfig,
    //required this.flutterI18nDelegate
  }) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = di();
  final EnvironmentalStore environmentalStore = di();

  final ThemeStore ts = di();

  // final PushNofification pushNofification = di();

  @override
  void initState() {
    super.initState();
    environmentalStore.setFlavourConfig(widget.envConfig);

    FacebookAuth.instance.webInitialize(
      appId: "194737369821554",
      cookie: true,
      xfbml: true,
      version: "v15.0",
    );

    // pushNofification.initPushNofification();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<ThemeStore>(create: (_) => ts),
      ],
      child: _buildWithTheme(context, ts),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeStore ts) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Pasindu Sample App',
        theme: ts.tc.theme(const Locale('en')),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
        // use English as the default locale
        localeResolutionCallback:
            (Locale? locale, Iterable<Locale> supportedLocales) {
          return locale;
        },

        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      );
    });
  }

  String prettyPrint(Map json) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String pretty = encoder.convert(json);
    return pretty;
  }
}
