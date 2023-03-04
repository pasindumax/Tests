import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pasindu_sample_app/core/data/datasources/firebase/faceook_auth.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';

class FaceookAuthDataSourceImpl extends FaceookAuthDataSource {
  final FacebookAuth facebookAuth;

  FaceookAuthDataSourceImpl({
    required this.facebookAuth,
  });

  @override
  Future<LoginResult?> login() async {
    try {
      return await facebookAuth.login();
    } on Exception catch (e) {
      //logger.recordError(e);
      throw Exception(e.toString());
    }
  }

  @override
  Future<Facebook?> getData() async {
    try {
      var _userData = await facebookAuth.getUserData();

      return Facebook.fromJson(_userData);
    } on Exception catch (e) {
      //logger.recordError(e);
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      return await facebookAuth.logOut();
    } on Exception catch (e) {
      //logger.recordError(e);
      throw Exception(e.toString());
    }
  }
}
