class Weather {
  String description;
  double temp;
  double feelsLike;
  String cityName;
  String error;

  Weather({this.description, this.temp, this.feelsLike, this.cityName});

  Weather.withError(String errorMessage) {
    this.error = errorMessage;
  }

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        description: json['weather'][0]['description'],
        temp: json['main']['temp'],
        feelsLike: json['main']['feels_like'],
        cityName: json['name']);
  }
}
