import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:consumo_de_api_de_clima/app/data/providers/weather_provider.dart';
import 'package:consumo_de_api_de_clima/app/data/repositories/weather_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final teste = "testando controller :)";

  late final WeatherRepository? repository;
  // HomeController({@required this.repository}) : assert(repository != null);
  dynamic weather = <Weather>[];

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() {
    repository?.getWeather().then((value) => weather = value);
  }
}