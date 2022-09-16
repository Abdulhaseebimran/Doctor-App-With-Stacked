import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  late String text;
  late Function()? modelRoute;
 CustomTextButton({Key? key, required this.modelRoute, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: modelRoute,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
}