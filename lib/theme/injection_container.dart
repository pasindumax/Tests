import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/theme/theme_values/injection_container.dart'
    as theme_values_di;

Future<void>? setup(GetIt di) async {
  theme_values_di.setup(di);
}
