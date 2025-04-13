import 'package:cloud_app/Get/GetIntro.dart';
import 'package:cloud_app/widgets/IntroTitletext.dart';
import 'package:cloud_app/widgets/introSubTitleText.dart';
import 'package:flutter/material.dart';

class CustomIntro_PageView extends StatelessWidget {
  const CustomIntro_PageView({
    super.key,
    required this.getintro,
  });

  final Getintro getintro;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
            IntroTitleText(
              images: getintro.intro,
              keyindex: index,
              valueindex: 0,
            ),
            IntroTitleText(
              images: getintro.intro,
              keyindex: index,
              valueindex: 1,
            ),
            IntroSubTitleText(
              images: getintro.intro,
              keyindex: index,
              valueindex: 2,
            ),
            IntroSubTitleText(
              images: getintro.intro,
              keyindex: index,
              valueindex: 3,
            ),
          ],
        );
      },
    );
  }
}