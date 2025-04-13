import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.OnSubmit,
    required this.cleartextfield,
  });
  final TextEditingController controller;
  final VoidCallback OnSubmit;
  final VoidCallback cleartextfield;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: 'Search for a country',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w900,
          color: Color(0XFF3C3F4D),
        ),
        suffix: IconButton(onPressed: cleartextfield, icon: Icon(Icons.clear)),
        suffixIcon: IconButton(
          color: Color(0XFF3C3F4D),
          onPressed: OnSubmit,
          icon: Icon(Icons.search_sharp),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF3C3F4D), width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF3C3F4D), width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
