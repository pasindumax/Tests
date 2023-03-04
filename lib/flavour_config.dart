import 'package:pasindu_sample_app/config/network/endpoints.dart';

enum ServerEndPoints { baseUrl, baseUrlWS, apiGateway }

class FlavourConfig {
  String? appTitle;

  //End points
  Map<ServerEndPoints, String>? serverEndPoints;
  EndPoints? endPoints;

  //Request Headers
  Map<String, String>? publicRequestHeader;
  Map<String, String>? requestHeader;
  Map<String, String>? preAuthenticatedRequestHeader;
  Map<String, String>? authenticatedRequestHeader;

  //Client Info
  String? clientName;
  String? clientId;
  String? clientSecret;
  String? clientCredentialsGrantType;
  String? refreshTokenGrantType;

  FlavourConfig(
      {this.clientCredentialsGrantType = 'client_credentials',
      this.refreshTokenGrantType = 'refresh_token'});
}
