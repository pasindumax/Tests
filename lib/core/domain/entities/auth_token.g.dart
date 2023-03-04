// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) => AuthToken(
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String?,
      scope: json['scope'] as String?,
      redirectUri: json['redirect_uri'] as String?,
      expiresIn: json['expires_in'] as int?,
    );

Map<String, dynamic> _$AuthTokenToJson(AuthToken instance) => <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'scope': instance.scope,
      'redirect_uri': instance.redirectUri,
      'expires_in': instance.expiresIn,
    };
