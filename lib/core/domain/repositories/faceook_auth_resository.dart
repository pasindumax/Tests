import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

abstract class FaceookAuthRepository {
  Future<Either<Error, LoginResult?>> login();
  Future<Either<Error, Facebook?>> getData();
  Future<Either<Error, void>> logout();
}
