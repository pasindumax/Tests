import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/features/onboarding/splash/presentation/mobx/splash.store.dart';
import 'package:pasindu_sample_app/injection_container.dart';
import 'package:mobx/mobx.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashStore _store = di();
  final List<ReactionDisposer> _disposers = [];

  @override
  void initState() {
    // TODO: implement initState
    _store.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      BaseImages.splashLogo,
      fit: BoxFit.contain,
      height: 12.w,
    )));
  }
}
