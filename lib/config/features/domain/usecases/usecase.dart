import 'package:dartz/dartz.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

abstract class UseCase<Type, UsecaseParams> {
  Future<Either<Error, Type>> call(UsecaseParams params);
}

abstract class SocketUseCase<Type, TypeParams> {
  Future<Either<Error, Type?>> call(TypeParams data);
}
