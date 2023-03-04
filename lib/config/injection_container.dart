import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/config/data/injection_container.dart'
    as data_di;
import 'package:pasindu_sample_app/config/constants/injection_container.dart'
    as constant_di;

Future<void>? setup(GetIt di) async {
  data_di.setup(di);
  constant_di.setup(di);
}
