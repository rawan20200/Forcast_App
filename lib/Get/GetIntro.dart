import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getintro extends GetxController {
  Map<String, dynamic> intro = {
    'assets/introone.png': [
      'Detailed Hourly  ',
      'Forecast',
      'Get in - depth weather',

      'information.',
    ],
    'assets/introtwo.png': [
      'Real-Time',
      ' Weather Map',
      'Watch the progress of the',
      'precipitation to stay informed',
    ],
    'assets/introthree.png': [
      'Weather Around',

      'the World',
      'Add any location you want and',

      '  swipe easily to chnage.',
    ],
    'assets/introfour.png': [
      'Detailed Hourly',
          ' Forecast',
      'Get in - depth weather',
      ' information.',
    ],
  };
  PageController controller = PageController();
  RxDouble progress = 0.25.obs;
  RxBool islastpage = false.obs;
  RxBool isintrofinished = false.obs;
  void onTap() {
    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
    if (controller.page! + 2 < intro.length) {
      isintrofinished.value = false;
    } else if (controller.page! + 2 > intro.length) {
      isintrofinished.value = true;
    }
    update();
  }

  void onProgress() {
    progress.value = (controller.page! + 2) / intro.length;
  }

  void onPageChanged(int value) {
    progress.value = (value + 1) / intro.length;
    if (progress.value < 1) {
      islastpage.value = false;
    } else if (progress.value == 1) {
      islastpage.value = true;
    }
  }
}
