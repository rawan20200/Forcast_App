import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatelessWidget {
  Intro({super.key});
  PageController controller = PageController();
  Map<String, dynamic> images = {
    'assets/introone.png': [
      'Detailed Hourly',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF484B5B),
      appBar: AppBar(
        backgroundColor: Color(0XFF484B5B),
        actions: [
          TextButton(
            onPressed: () {},
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
            height: 500,
            child: PageView.builder(
              controller: controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(images.keys.toList()[index])),
                      Text(
                        images.values.toList()[index][0],
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        images.values.toList()[index][1],
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        images.values.toList()[index][2],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        images.values.toList()[index][3],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 4,

            effect: JumpingDotEffect(
              dotColor: Colors.white,
              activeDotColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
