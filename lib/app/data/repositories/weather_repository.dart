import 'package:consumo_de_api_de_clima/app/data/providers/weather_provider.dart';

class MyRepository {
  final WeatherApiClient? apiClient;

  MyRepository({required this.apiClient}) : assert(apiClient != null);

  Future getAll() {
    return apiClient!.getAll();
  }
}