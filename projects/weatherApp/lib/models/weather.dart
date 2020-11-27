class Weather {
  final String description;
  final double temp;
  final double feelsLike;
  final String cityName;

  Weather({this.description, this.temp, this.feelsLike, this.cityName});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        description: json['weather'][0]['description'],
        temp: json['main']['temp'],
        feelsLike: json['main']['feels_like'],
        cityName: json['name']);
  }
}
