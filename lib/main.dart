import 'package:flutter/material.dart'; 
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(   
    debugShowCheckedModeBanner: true,   
    initialRoute: '/',
    // theme: appThemeData,
    defaultTransition: Transition.fade,   
    getPages: AppPages.pages,
    home: HomePage(),
  ));   
}