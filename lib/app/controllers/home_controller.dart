import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:consumo_de_api_de_clima/app/data/repositories/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final teste = "testando controller :)";
  bool isLoading = true;

  List<Weather> weather = [];
  late final WeatherRepository? repository;
  HomeController({@required this.repository}) : assert(repository != null);

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() {
    isLoading = true;
    repository?.getWeather().then((value) {
      weather = value;
      isLoading = false;
      update();
    });
  }
}