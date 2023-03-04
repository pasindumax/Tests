import 'package:auto_route/auto_route.dart';
import 'package:pasindu_sample_app/features/auth/signin/presentation/pages/sign_in.page.dart';
import 'package:pasindu_sample_app/features/landing/presentation/pages/landing.page.dart';
import 'package:pasindu_sample_app/features/onboarding/splash/presentation/pages/splash.page.dart';

//  flutter packages pub run build_runner watch
//  flutter packages pub run build_runner build
// flutter packages pub run build_runner build --delete-conflicting-outputs
@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(
    page: SplashPage,
    initial: true,
  ),
  AutoRoute(page: SignInPage),
  AutoRoute(page: LandingPage),
])
class $AppRouter {}
