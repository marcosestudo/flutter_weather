import 'package:consumo_de_api_de_clima/app/controllers/home_controller.dart';
import 'package:consumo_de_api_de_clima/app/data/providers/weather_provider.dart';
import 'package:consumo_de_api_de_clima/app/data/repositories/weather_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(repository: WeatherRepository(apiClient: WeatherApiClient(httpClient: http.Client()))));
  }
}