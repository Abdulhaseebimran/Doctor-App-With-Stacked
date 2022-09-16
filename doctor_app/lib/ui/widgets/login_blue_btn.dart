import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginBlueBtn extends StatelessWidget {
  final Function()? modelRoute;
  final String text;
  const LoginBlueBtn({Key? key, required this.text, required this.modelRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: MediaQuery.of(context).size.width * .85,
    height: MediaQuery.of(context).size.height * .07,
    child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
          )),
        ),
        onPressed: modelRoute,
         child: Text(text,
         style: GoogleFonts.poppins(fontSize: 18 ,color: Colors.black, fontWeight: FontWeight.bold),),),
  );
  }
}
