import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTextWidget extends StatelessWidget {
  final String text;
  const HomeTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}