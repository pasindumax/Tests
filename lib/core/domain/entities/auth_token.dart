import 'package:json_annotation/json_annotation.dart';

part 'auth_token.g.dart';

@JsonSerializable()
class AuthToken {
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'scope')
  final String? scope;
  @JsonKey(name: 'redirect_uri')
  final String? redirectUri;
  @JsonKey(name: 'expires_in')
  final int? expiresIn;

  AuthToken(
      {this.refreshToken,
      this.tokenType,
      this.scope,
      this.redirectUri,
      this.expiresIn});

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);

  Map<String, dynamic> toJson() => _$AuthTokenToJson(this);

  AuthToken copyWith({
    String? refreshToken,
    String? tokenType,
    String? scope,
    String? redirectUri,
    int? expiresIn,
  }) {
    return AuthToken(
      refreshToken: refreshToken ?? this.refreshToken,
      tokenType: tokenType ?? this.tokenType,
      scope: scope ?? this.scope,
      redirectUri: redirectUri ?? this.redirectUri,
      expiresIn: expiresIn ?? this.expiresIn,
    );
  }
}
