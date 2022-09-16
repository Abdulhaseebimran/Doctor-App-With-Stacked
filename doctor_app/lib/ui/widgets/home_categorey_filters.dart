import 'package:flutter/material.dart';

class HomeCategoriesFilter extends StatelessWidget {
  final String text;
  final Function()? modelRoute1;
  final Function()? modelRoute2;
  final bool colorCondition;

  const HomeCategoriesFilter(
      {Key? key,
      required this.text,
      this.modelRoute1,
      this.modelRoute2,
      required this.colorCondition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        modelRoute1;
        modelRoute2;
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(3),
        foregroundColor: MaterialStateProperty.all(
            colorCondition == true ? Colors.white : Colors.blue),
        backgroundColor: MaterialStateProperty.all(
            colorCondition == true ? Colors.blue : Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: colorCondition == true ? Colors.white : Colors.blue,
              width: 1,
            ),
          ),
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}