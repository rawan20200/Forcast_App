import 'package:cloud_app/Get/GetIntro.dart';
import 'package:cloud_app/widgets/SubTitleText.dart';
import 'package:cloud_app/widgets/TitleText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Getintro getintro = Get.find();
    return Scaffold(
      backgroundColor: Color(0XFF484B5B),
      appBar: AppBar(
        backgroundColor: Color(0XFF484B5B),
        actions: [
          TextButton(
            onPressed: () {
              getintro.onTap();
              if (getintro.isintrofinished.value == true) {
                Get.offAllNamed('countrysearch');
              }
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 450,
            child: PageView.builder(
              onPageChanged: (value) {
                getintro.onPageChanged(value);
              },
              controller: getintro.controller,
              itemCount: getintro.intro.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image(
                      image: AssetImage(getintro.intro.keys.toList()[index]),
                      height: 300,
                    ),
                    TitleText(
                      images: getintro.intro,
                      keyindex: index,
                      valueindex: 0,
                    ),
                    TitleText(
                      images: getintro.intro,
                      keyindex: index,
                      valueindex: 1,
                    ),
                    SubTitleText(
                      images: getintro.intro,
                      keyindex: index,
                      valueindex: 2,
                    ),
                    SubTitleText(
                      images: getintro.intro,
                      keyindex: index,
                      valueindex: 3,
                    ),
                  ],
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: getintro.controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.white,
            ),
          ),

          SizedBox(height: 40),
          Obx(
            () => Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    // strokeWidth: 3,
                    backgroundColor: Colors.grey.shade700,
                    value: getintro.progress.value,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color.lerp(
                        Color(0XFFE145A6),
                        Color(0XFFC23ACC),
                        getintro.progress.value,
                      )!,
                    ),
                  ),
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
