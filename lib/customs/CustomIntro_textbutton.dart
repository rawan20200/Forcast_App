import 'package:cloud_app/Get/GetIntro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomIntro_textbutton extends StatelessWidget {
  const CustomIntro_textbutton({
    super.key,
    required this.getintro,
  });

  final Getintro getintro;

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}