import 'package:consumo_de_api_de_clima/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Local weather"),
        ),
        body: GetBuilder<HomeController>(builder: (_) {
          return controller.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Local: ${controller.weatherResponse['name']}"),
                    Text("Temp: ${controller.weatherResponse['main']['temp']}"),
                    Text("Main: ${controller.weatherResponse['weather'][0]['main']}"),
                  ],
                ),
              );
        })
    );
  }
}
