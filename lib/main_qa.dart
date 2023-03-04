import 'package:pasindu_sample_app/config/network/endpoints.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/main_common.dart';

void main() {
  final qaConfig = FlavourConfig()
    ..appTitle = 'Price Tracker QA'
    ..serverEndPoints = {
      ServerEndPoints.baseUrl: '',
      ServerEndPoints.apiGateway: '',
    }
    ..endPoints = EndPoints()
    ..publicRequestHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded'
    }
    ..clientName = ''
    ..clientSecret = ''
    ..clientId = '';

  mainCommon(qaConfig);
}
