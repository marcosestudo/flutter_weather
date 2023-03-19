import 'dart:convert';
import 'package:consumo_de_api_de_clima/app/data/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:meta/meta.dart';

const baseUrl = 'https://api.openweathermap.org/data/2.5/weather?appid=00946946320790876002d6b7e579c753&units=metric&lang=pt_br';
// TODO: a baseurl tá com latitude e longitude fixas, buscar forma de acessar a localização do dispositivo
class WeatherApiClient {
  final http.Client? httpClient;

  WeatherApiClient({@required this.httpClient});

  Future<dynamic> getWeather(double lat, double lon) async {
    try {
      final response = await httpClient!.get(Uri.parse("$baseUrl&lat=$lat&lon=$lon"));
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

  Future<dynamic> getLocation() async{
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    return {'lat': _locationData.latitude, 'lon': _locationData.longitude};
  }
}