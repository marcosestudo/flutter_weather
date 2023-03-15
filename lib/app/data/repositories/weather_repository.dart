import 'package:consumo_de_api_de_clima/app/data/providers/weather_provider.dart';
import 'package:flutter/material.dart';

class WeatherRepository {
  final WeatherApiClient? apiClient;

  WeatherRepository({@required this.apiClient}) : assert(apiClient != null);

  Future getWeather() {
    return apiClient!.getWeather();
  }
}