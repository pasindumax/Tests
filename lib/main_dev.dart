import 'package:pasindu_sample_app/config/network/endpoints.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/main_common.dart';

void main() {
  final devConfig = FlavourConfig()
    ..appTitle = 'Price Tracker Dev'
    ..serverEndPoints = {
      ServerEndPoints.baseUrl: 'https://dl.dropboxusercontent.com/',
      ServerEndPoints.apiGateway: 'https://dl.dropboxusercontent.com/',
      ServerEndPoints.baseUrlWS: ''
    }
    ..endPoints = EndPoints()
    ..publicRequestHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded'
    }
    ..clientName = ''
    ..clientSecret = ''
    ..clientId = '';

  mainCommon(devConfig);
}
