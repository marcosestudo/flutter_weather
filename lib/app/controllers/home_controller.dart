import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:consumo_de_api_de_clima/app/data/repositories/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isLoading = true;
  dynamic weatherResponse;

  // WeatherModel weather = WeatherModel();

  late final WeatherRepository? repository;
  HomeController({@required this.repository}) : assert(repository != null);

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() {
    repository?.getLocation().then((location) {
      double lat = location['lat'];
      double lon = location['lon'];

      repository?.getWeather(lat, lon).then((weatherData) {
        weatherResponse = weatherData;
        isLoading = false;
        update();
      });
    });
  }
}
