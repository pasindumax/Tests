import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pasindu_sample_app/core/data/datasources/firebase/faceook_auth.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';
import 'package:pasindu_sample_app/core/domain/repositories/faceook_auth_resository.dart';
import 'package:pasindu_sample_app/helpers/error_handling/errors/server_error.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

class FaceookAuthRepositoryImpl extends FaceookAuthRepository {
  final classIdentifier = 'FaceookAuthRepositoryImpl';
  late final FaceookAuthDataSource firebaseDataSource;

  FaceookAuthRepositoryImpl({required this.firebaseDataSource});

  @override
  Future<Either<Error, LoginResult?>> login() async {
    try {
      final response = await firebaseDataSource.login();
      if (response?.status == LoginStatus.success) {
        return Right(response);
      } else {
        return Left(ServerError(errorMessage: response?.message));
      }
    } on Exception catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Error, Facebook?>> getData() async {
    try {
      final response = await firebaseDataSource.getData();
      if (response != null) {
        return Right(response);
      } else {
        return Left(ServerError(errorMessage: "Not Found"));
      }
    } on Exception catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Error, void>> logout() async {
    try {
      final response = await firebaseDataSource.logout();
      return Right(response);
    } on Exception catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }
}
