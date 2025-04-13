import 'package:cloud_app/Get/GetIntro.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIntro_smoothpageindicator extends StatelessWidget {
  const CustomIntro_smoothpageindicator({
    super.key,
    required this.getintro,
  });

  final Getintro getintro;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: getintro.controller,
      count: 4,
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.black,
        dotColor: Colors.white,
      ),
    );
  }
}