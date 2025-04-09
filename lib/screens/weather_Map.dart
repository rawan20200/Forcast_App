import 'package:cloud_app/Get/GetSearch.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class WeatherMap extends StatelessWidget {
   WeatherMap({super.key});
 final Getsearch getsearch = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(getsearch.query.value),),
    );
  }
}
