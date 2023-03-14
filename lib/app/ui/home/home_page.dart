import 'package:consumo_de_api_de_clima/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 500.0,
          color: const Color(0xEEE4000F),
          child: Stack(children: [
            Text(
              "Text 1",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Center(
              child: Container(
                color: Colors.blue,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "🚧   Work in progress...   🚧",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Text(
                        "🚧   Work in progress...   🚧",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Text(
                        "🚧   Work in progress...   🚧",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ]),
              ),
            ),
            Container(
              color: Colors.orange,
              width: 150.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Container Laranja",
                      style: TextStyle(fontSize: 24, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
