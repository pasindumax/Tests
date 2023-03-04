import 'package:get_it/get_it.dart';

import 'package:pasindu_sample_app/config/data/local/injection_container.dart'
    as local_di;

Future<void>? setup(GetIt di) async {
  local_di.setup(di);
}
