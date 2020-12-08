import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/covid.dart';

class ApiProvider extends ChangeNotifier {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';
  GlobalStats _global;
  List<Countries> _countries;
  List<Countries> _filteredCountries;
  bool _isSearching;
  String _inputCountry;

  /////////// Global ////////////

  GlobalStats get getGlobal => _global;

  set setGlobal(GlobalStats global) {
    _global = global;
  }

  /////////// Countries ////////////

  List<Countries> get getCountries {
    return _countries;
  }

  set setCountries(List<Countries> countries) {
    _countries = countries;
  }

  /////////// FilteredCountries ////////////

  List<Countries> get getFilteredCountries {
    return _filteredCountries;
  }

  set setFilteredCountries(List<Countries> countries) {
    if (_isSearching ?? false) {
      _filteredCountries = countries
          .where((element) => element.country
              .toLowerCase()
              .contains(getInputCountry.toLowerCase()))
          .toList();
      notifyListeners();
    }
  }

  ////////// IsSearching //////////

  bool get getIsSearching => _isSearching;

  set setIsSearching(bool state) {
    _isSearching = state;
    notifyListeners();
  }

  ////////// InputCoutry //////////

  String get getInputCountry => _inputCountry;

  set setInputCountry(String value) {
    _inputCountry = value;
    notifyListeners();
  }

  ///////////// Fetch APi /////////////

  Future<Covid> fetchDatas() async {
    try {
      Response response = await _dio.get(_url);

      return Covid.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stacktrace: $stacktrace');
      return Covid.withError('Data not found / Connection issue');
    }
  }
}
