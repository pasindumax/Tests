import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/config/injection_container.dart'
    as config_di;
import 'package:pasindu_sample_app/core/injection_container.dart' as core_di;
import 'package:pasindu_sample_app/features/injection_container.dart'
    as features_di;
import 'package:pasindu_sample_app/helpers/injection_container.dart'
    as helpers_di;
import 'package:pasindu_sample_app/routes/injection_container.dart'
    as routes_di;
import 'package:pasindu_sample_app/theme/injection_container.dart' as theme_di;

import 'package:pasindu_sample_app/store/injection_container.dart' as store_di;

final di = GetIt.instance;

Future<void>? setup() async {
  config_di.setup(di);
  core_di.setup(di);
  features_di.setup(di);
  helpers_di.setup(di);
  routes_di.setup(di);
  theme_di.setup(di);
  store_di.setup(di);
}
