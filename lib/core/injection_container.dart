import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/components/injection_container.dart'
    as components_di;
import 'package:pasindu_sample_app/core/domain/injection_container.dart'
    as domain_di;
import 'package:pasindu_sample_app/core/data/injection_container.dart'
    as data_di;
import 'package:pasindu_sample_app/core/plugins/injection_container.dart'
    as plugins_di;

Future<void>? setup(GetIt di) async {
  components_di.setup(di);
  domain_di.setup(di);
  data_di.setup(di);
  plugins_di.setup(di);
}
