import 'package:pasindu_sample_app/config/network/endpoints.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/main_common.dart';

void main() {
  final mainConfig = FlavourConfig()
    ..appTitle = 'Price Tracker Production'
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

  mainCommon(mainConfig);
}
