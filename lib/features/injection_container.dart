import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/features/onboarding/injection_container.dart'
    as onboarding_di;
import 'package:pasindu_sample_app/features/auth/injection_container.dart'
    as auth_di;
import 'package:pasindu_sample_app/features/landing/injection_container.dart'
    as landing_di;

Future<void>? setup(GetIt di) async {
  onboarding_di.setup(di);
  auth_di.setup(di);
  landing_di.setup(di);
}
