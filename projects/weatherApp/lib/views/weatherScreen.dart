import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weatherApp/widgets/cardLittle.dart';
import 'package:weatherApp/widgets/profile.dart';

import '../models/weather.dart';

Future<Weather> fetchWeather() async {
  final response = await http.get(
      'http://api.openweathermap.org/data/2.5/weather?q=paris&appid=d73937eca684ab25d1f516dba202a37c');

  if (response.statusCode == 200) {
    return Weather.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load weather');
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future<Weather> futureWeather;
  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[300], Colors.indigo[700]])),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: FutureBuilder<Weather>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Profile(),
                    CardLittle(
                      cityName: snapshot.data.cityName,
                      weather: snapshot.data.description,
                      degree: snapshot.data.temp,
                    ),
                    SizedBox(height: 300,)
                  ]);
            } else if (snapshot.hasError) {
              return Text(
                '${snapshot.error}',
                style: TextStyle(fontSize: 12.0),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    ));
  }
}
