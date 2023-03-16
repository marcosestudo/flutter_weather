import 'package:consumo_de_api_de_clima/app/routes/app_pages.dart';
import 'package:consumo_de_api_de_clima/app/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Weather app",
    debugShowCheckedModeBanner: true,   
    initialRoute: Routes.HOME,
    // theme: appThemeData,
    defaultTransition: Transition.fade,   
    getPages: AppPages.pages,
    home: HomePage(),
  ));   
}