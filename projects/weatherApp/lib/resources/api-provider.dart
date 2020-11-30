import 'package:dio/dio.dart';
import 'package:weatherApp/models/weather.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'http://api.openweathermap.org/data/2.5/weather';
  final String _apiKey = 'd73937eca684ab25d1f516dba202a37c';
  String _city;

  Future<Weather> fetchWeather() async {
    try {
      // Response response = await _dio.get('$_url/?q=$_city&appid=$_apiKey');
      Response response = await _dio.get(
          'http://api.openweathermap.org/data/2.5/weather?q=london&appid=d73937eca684ab25d1f516dba202a37c');
      return Weather.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stacktrace: $stacktrace');
      return Weather.withError('Data not found / Connection issue');
    }
  }
}
