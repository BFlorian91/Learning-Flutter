import 'package:weatherApp/models/weather.dart';
import 'package:weatherApp/resources/api-provider.dart';

class ApiRepository {
  final _provider = ApiProvider();
  Future<Weather> fetchWeather() {
    return _provider.fetchWeather();
  }
}

class NetworkError extends Error {}