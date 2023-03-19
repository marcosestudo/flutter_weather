import 'dart:convert';
import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=-22.83178514538392&lon=-43.08279869011315&appid=00946946320790876002d6b7e579c753';
// TODO: a baseurl tá com latitude e longitude fixas, buscar forma de acessar a localização do dispositivo
class WeatherApiClient {
  final http.Client? httpClient;

  WeatherApiClient({@required this.httpClient});

  Future<dynamic> getWeather() async {
    try {
      final response = await httpClient!.get(Uri.parse(baseUrl));
      debugPrint("STATUS CODE --- ${response.statusCode} ---");
      if (response.statusCode == 200) {
        dynamic jsonResponse = jsonDecode(response.body);
        debugPrint("RESPONSE:  $jsonResponse");
        return jsonResponse;
      } else {
        debugPrint('Error -getWeather');
      }
    } catch (e) {
      debugPrint("Error fetching from API: $e");
    }
    return null;
  }
}