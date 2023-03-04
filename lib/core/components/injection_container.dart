import 'package:pasindu_sample_app/core/components/confirmation_message/confirmation_message_helper.dart';

import 'package:pasindu_sample_app/core/components/loader/loader_helper.dart';
import 'package:pasindu_sample_app/core/components/message/message_helper.dart';
import 'package:get_it/get_it.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => ConfirmationMessageHelper());

  di.registerLazySingleton(() => MessageHelper());
  di.registerLazySingleton(() => LoaderHelper());
}
