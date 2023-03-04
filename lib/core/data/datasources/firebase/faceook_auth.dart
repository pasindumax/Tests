import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pasindu_sample_app/core/domain/entities/facebook.dart';

abstract class FaceookAuthDataSource {
  Future<LoginResult?> login();
  Future<Facebook?> getData();
  Future<void> logout();
}
