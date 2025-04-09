import 'package:cloud_app/binding/Weatherbinding.dart';
import 'package:cloud_app/screens/CountrySearch.dart';
import 'package:cloud_app/screens/Introscreen.dart';
import 'package:cloud_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Weatherbinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/introscreen', page: () => IntroScreen()),
        GetPage(name: '/countrysearch', page: () => CountrySearch()),
      ],
    );
  }
}
