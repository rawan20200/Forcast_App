import 'package:cloud_app/Get/GetIntro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomIntro_NextButton extends StatelessWidget {
  const CustomIntro_NextButton({
    super.key,
    required this.getintro,
  });

  final Getintro getintro;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
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
    );
  }
}