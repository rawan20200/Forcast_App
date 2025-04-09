import 'package:cloud_app/Get/GetIntro.dart';
import 'package:cloud_app/Get/GetSearch.dart';
import 'package:get/get.dart';

class Weatherbinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Getintro(), permanent: true);
    Get.put(Getsearch(), permanent: true);
  }
}
