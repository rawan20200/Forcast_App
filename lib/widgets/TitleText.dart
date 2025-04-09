import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.images, required this.keyindex, required this.valueindex});

  final Map<String, dynamic> images;
  final int keyindex;
  final int valueindex;

  @override
  Widget build(BuildContext context) {
    return Text(
      images.values.toList()[keyindex][valueindex],
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
    );
  }
}
