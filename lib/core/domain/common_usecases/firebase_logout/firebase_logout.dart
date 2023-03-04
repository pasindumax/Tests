import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/usecase.dart';

import 'package:pasindu_sample_app/core/domain/repositories/faceook_auth_resository.dart';

import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

class FirebaseLogoutUseCase extends UseCase<void, NoParams> {
  late final FaceookAuthRepository repository;
  late final ConnectivityHelper connectivityHelper;
  FirebaseLogoutUseCase({
    required this.repository,
    required this.connectivityHelper,
  });

  @override
  Future<Either<Error, void>> call(NoParams param) async {
    final isConnected = await connectivityHelper.isConnected();
    if (isConnected) {
      return await repository.logout();
    } else {
      throw Exception('Please connect to active internet connection');
    }
  }
}
