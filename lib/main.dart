import 'package:cloud_app/screens/intro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Intro());
  }
}
