import 'package:cloud_app/Get/GetIntro.dart';
import 'package:flutter/material.dart';

class CustomIntro_progressindicator extends StatelessWidget {
  const CustomIntro_progressindicator({
    super.key,
    required this.getintro,
  });

  final Getintro getintro;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
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
    );
  }
}