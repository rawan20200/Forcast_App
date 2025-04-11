import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: GoogleFonts.cookie(),
      // style: TextStyle(
      //   fontSize: 15,
      //   fontWeight: FontWeight.w900,
      //   color: Color(0XFF3C3F4D),
      // ),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: 'Seach for a country',
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
