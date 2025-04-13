import 'package:cloud_app/Get/GetIntro.dart';
import 'package:cloud_app/customs/CustomIntro_PageView.dart';
import 'package:cloud_app/customs/CustomIntro_progressindicator.dart';
import 'package:cloud_app/customs/CustomIntro_smoothpageindicator.dart';
import 'package:cloud_app/customs/CustomIntro_textbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Getintro getintro = Get.find();
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomIntro_textbutton(getintro: getintro),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 450,
            child: CustomIntro_PageView(getintro: getintro),
          ),
          CustomIntro_smoothpageindicator(getintro: getintro),
          SizedBox(height: 40),
          Obx(
            () => Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CustomIntro_progressindicator(getintro: getintro),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    size: 20,
                    getintro.islastpage.value == true
                        ? Icons.check
                        : Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    getintro.onTap();
                    getintro.onProgress();
                    if (getintro.isintrofinished.value == true) {
                      Get.offAllNamed('countrysearch');
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}








