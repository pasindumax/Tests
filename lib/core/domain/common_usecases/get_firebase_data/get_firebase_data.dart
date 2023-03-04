import 'package:dartz/dartz.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/usecase.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';

import 'package:pasindu_sample_app/core/domain/repositories/faceook_auth_resository.dart';

import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

class GetFirebaseDataUseCase extends UseCase<Facebook?, NoParams> {
  late final FaceookAuthRepository repository;
  late final ConnectivityHelper connectivityHelper;
  GetFirebaseDataUseCase({
    required this.repository,
    required this.connectivityHelper,
  });

  @override
  Future<Either<Error, Facebook?>> call(NoParams param) async {
    final isConnected = await connectivityHelper.isConnected();
    if (isConnected) {
      return await repository.getData();
    } else {
      throw Exception('Please connect to active internet connection');
    }
  }
}
