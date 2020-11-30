import 'package:dio/dio.dart';
import 'package:providerTest/models/covid.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';

  Future <Covid> fetchDatas() async {
    try {
      Response response = await _dio.get(_url);
      return Covid.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stacktrace: $stacktrace');
      return Covid.withError('Data not found / Connection issue');
    }
  }
}
