import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlueText extends StatelessWidget {
  late String textt;
  BlueText({Key? key, required this.textt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: GoogleFonts.poppins(
          color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}