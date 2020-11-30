part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();

  @override
  List<Object> get props => [];
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();

  @override
  List<Object> get props => null;
}

class WeatherLoaded extends WeatherState {
  final Weather weatherModel;
  const WeatherLoaded(this.weatherModel);

  @override
  List<Object> get props => [weatherModel];
}

class WeatherError extends WeatherState {
  final String message;
  const WeatherError(this.message);

  @override
  List<Object> get props => [message];
}
