import 'package:flutter/material.dart';

class IntroSubTitleText extends StatelessWidget {
  const IntroSubTitleText({
    super.key,
    required this.images,
    required this.keyindex,
    required this.valueindex,
  });

  final Map<String, dynamic> images;
  final int keyindex;
  final int valueindex;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      images.values.toList()[keyindex][valueindex],
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}
