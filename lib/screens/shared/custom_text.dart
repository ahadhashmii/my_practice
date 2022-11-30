import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 44),
      alignment: Alignment.centerLeft,
      child: Text(text, style:GoogleFonts.poppins(
          textStyle:  const TextStyle(color: Color(0xff023047),
              fontWeight: FontWeight.w600,fontSize: 14)),),
    );
  }
}
