// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environmental.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnvironmentalStore on _EnvironmentalStore, Store {
  final _$environmentConfigAtom =
      Atom(name: '_EnvironmentalStore.environmentConfig');

  @override
  FlavourConfig? get environmentConfig {
    _$environmentConfigAtom.reportRead();
    return super.environmentConfig;
  }

  @override
  set environmentConfig(FlavourConfig? value) {
    _$environmentConfigAtom.reportWrite(value, super.environmentConfig, () {
      super.environmentConfig = value;
    });
  }

  final _$setFlavourConfigAsyncAction =
      AsyncAction('_EnvironmentalStore.setFlavourConfig');

  @override
  Future<void> setFlavourConfig(FlavourConfig? envConfig) {
    return _$setFlavourConfigAsyncAction
        .run(() => super.setFlavourConfig(envConfig));
  }

  final _$resetEnvironmentStoreAsyncAction =
      AsyncAction('_EnvironmentalStore.resetEnvironmentStore');

  @override
  Future<void> resetEnvironmentStore() {
    return _$resetEnvironmentStoreAsyncAction
        .run(() => super.resetEnvironmentStore());
  }

  final _$setRequestHeaderAsyncAction =
      AsyncAction('_EnvironmentalStore.setRequestHeader');

  @override
  Future<void> setRequestHeader(String? accessToken) {
    return _$setRequestHeaderAsyncAction
        .run(() => super.setRequestHeader(accessToken));
  }

  final _$setPreAuthenticatedRequestHeaderAsyncAction =
      AsyncAction('_EnvironmentalStore.setPreAuthenticatedRequestHeader');

  @override
  Future<void> setPreAuthenticatedRequestHeader(String? accessToken) {
    return _$setPreAuthenticatedRequestHeaderAsyncAction
        .run(() => super.setPreAuthenticatedRequestHeader(accessToken));
  }

  final _$setAuthenticatedRequestHeaderAsyncAction =
      AsyncAction('_EnvironmentalStore.setAuthenticatedRequestHeader');

  @override
  Future<void> setAuthenticatedRequestHeader(String? identityToken) {
    return _$setAuthenticatedRequestHeaderAsyncAction
        .run(() => super.setAuthenticatedRequestHeader(identityToken));
  }

  @override
  String toString() {
    return '''
environmentConfig: ${environmentConfig}
    ''';
  }
}
