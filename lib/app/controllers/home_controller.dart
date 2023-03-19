import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:consumo_de_api_de_clima/app/data/repositories/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isLoading = true;
  late double lat;
  late double lon;
  dynamic weatherResponse;

  // WeatherModel weather = WeatherModel();

  late final WeatherRepository? repository;
  HomeController({@required this.repository}) : assert(repository != null);

  @override
  void onInit() {
    fetchLocation();
    fetchData(lat, lon);
    super.onInit();
  }

  void fetchData(double lat, double lon) {
    isLoading = true;
    repository?.getWeather(lat, lon).then((value) {
      weatherResponse = value;
      isLoading = false;
      update();
    });
  }

  void fetchLocation() {
    repository?.getLocation().then((value) {
      lat = value.lat;
      lon = value.lon;
    });

  }
}