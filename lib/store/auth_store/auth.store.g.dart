// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  final _$authTokenAtom = Atom(name: '_AuthStore.authToken');

  @override
  AccessToken? get authToken {
    _$authTokenAtom.reportRead();
    return super.authToken;
  }

  @override
  set authToken(AccessToken? value) {
    _$authTokenAtom.reportWrite(value, super.authToken, () {
      super.authToken = value;
    });
  }

  final _$setAccessTokenAsyncAction = AsyncAction('_AuthStore.setAccessToken');

  @override
  Future<void> setAccessToken(AccessToken? token) {
    return _$setAccessTokenAsyncAction.run(() => super.setAccessToken(token));
  }

  final _$expireSessionAsyncAction = AsyncAction('_AuthStore.expireSession');

  @override
  Future<void> expireSession() {
    return _$expireSessionAsyncAction.run(() => super.expireSession());
  }

  final _$signOutAsyncAction = AsyncAction('_AuthStore.signOut');

  @override
  Future<void> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  @override
  String toString() {
    return '''
authToken: ${authToken}
    ''';
  }
}
