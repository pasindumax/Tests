import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/features/auth/signin/injection_container.dart'
    as sign_in;

Future<void>? setup(GetIt di) async {
  sign_in.setup(di);
}
