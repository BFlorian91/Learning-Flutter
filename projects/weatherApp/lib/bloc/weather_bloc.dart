import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherApp/models/weather.dart';
import 'package:weatherApp/repository/api-repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final ApiRepository _apiRepository = ApiRepository();

  WeatherBloc() : super(WeatherInitial());

  @override
  WeatherState get initialState => WeatherInitial();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeatherList) {
      try {
        yield WeatherLoading();
        final weatherList = await _apiRepository.fetchWeather();
        yield WeatherLoaded(weatherList);
        if (weatherList.error != null) {
          yield WeatherError(weatherList.error);
        }
      } on NetworkError {
        yield WeatherError('Failed to fetch data. is your device online?');
      }
    }
  }
}
