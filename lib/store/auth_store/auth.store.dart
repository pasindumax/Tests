import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:mobx/mobx.dart';

part 'auth.store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore();

  /// *************************************************************************
  /// HANDLE AUTH TOKEN - START
  ///**************************************************************************/
  @observable
  AccessToken? authToken;

  @action
  Future<void> setAccessToken(AccessToken? token) async {
    authToken = token;
  }

  @action
  Future<void> expireSession() async {
    // facebookAuth.logOut();
  }

  @action
  Future<void> signOut() async {
    //  await expireSession();
  }

  /// *************************************************************************
  /// HANDLE AUTH TOKEN - END
  ///**************************************************************************/

  /// *************************************************************************
  /// HANDLE CRASHLYTICS - START
  ///**************************************************************************/

  Future<void> setIdentityDataForCrashlytics() async {}

  /// *************************************************************************
  /// HANDLE CRASHLYTICS - END
  ///**************************************************************************/

}
