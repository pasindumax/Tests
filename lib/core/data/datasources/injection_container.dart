import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/data/datasources/local/injection_container.dart'
    as local_di;
import 'package:pasindu_sample_app/core/data/datasources/remote/injection_container.dart'
    as remote_di;
import 'package:pasindu_sample_app/core/data/datasources/socket/injection_container.dart'
    as socket_di;
import 'package:pasindu_sample_app/core/data/datasources/firebase/injection_container.dart'
    as firebase_di;

Future<void>? setup(GetIt di) async {
  local_di.setup(di);
  remote_di.setup(di);
  socket_di.setup(di);
  firebase_di.setup(di);
}
