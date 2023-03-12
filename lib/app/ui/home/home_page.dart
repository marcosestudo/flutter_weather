import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("🚧   Work in progress...   🚧",
              style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
