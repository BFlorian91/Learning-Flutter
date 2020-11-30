import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherApp/bloc/weather_bloc.dart';
import 'package:weatherApp/models/weather.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherBloc _weatherBloc = WeatherBloc();

  @override
  void initState() {
    super.initState();
    _weatherBloc.add(GetWeatherList());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather app')),
      body: _buildWeatherList(),
    );
  }

  Widget _buildWeatherList() {
    return Container(
        margin: EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (_) => _weatherBloc,
          child: BlocListener<WeatherBloc, WeatherState>(
            listener: (context, state) {
              if (state is WeatherError) {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message)));
              }
            },
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state is WeatherInitial || state is WeatherLoading) {
                  return _buildLoading();
                } else if (state is WeatherLoaded) {
                  return _buildCard(context, state.weatherModel);
                }
                return Container();
              },
            ),
          ),
        ));
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());

  Widget _buildCard(BuildContext context, Weather weatherModel) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(weatherModel.cityName),
                  Text(weatherModel.description),
                  Text(weatherModel.temp.toString()),  
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
