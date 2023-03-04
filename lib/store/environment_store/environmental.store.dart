import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:mobx/mobx.dart';

part 'environmental.store.g.dart';

class EnvironmentalStore = _EnvironmentalStore with _$EnvironmentalStore;

abstract class _EnvironmentalStore with Store {
  @observable
  FlavourConfig? environmentConfig;

  @action
  Future<void> setFlavourConfig(FlavourConfig? envConfig) async {
    environmentConfig = envConfig;
  }

  @action
  Future<void> resetEnvironmentStore() async {
    environmentConfig = null;
  }

  @action
  Future<void> setRequestHeader(
    String? accessToken,
  ) async {
    environmentConfig?.requestHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'bearer $accessToken',
    };
    setPreAuthenticatedRequestHeader(
      accessToken,
    );
  }

  @action
  Future<void> setPreAuthenticatedRequestHeader(
    String? accessToken,
  ) async {
    environmentConfig?.preAuthenticatedRequestHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer $accessToken',
    };
  }

  @action
  Future<void> setAuthenticatedRequestHeader(
    String? identityToken,
  ) async {
    environmentConfig?.authenticatedRequestHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      //'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'bearer $identityToken',
    };
  }
}
