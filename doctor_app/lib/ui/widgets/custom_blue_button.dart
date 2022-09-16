import 'package:flutter/material.dart';

class CustomBlueButton extends StatelessWidget {
  final Function()? modelRoute;
  final String text;
  const CustomBlueButton({Key? key, required this.text, required this.modelRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: MediaQuery.of(context).size.width * .85,
    height: MediaQuery.of(context).size.height * .07,
    child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
          )),
        ),
        onPressed: modelRoute,
        child: Text(text),),
  );
  }
}