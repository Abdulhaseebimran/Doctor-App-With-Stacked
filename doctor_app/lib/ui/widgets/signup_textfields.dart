import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  final String hintText;
  final IconData prefeixIcon;
  final IconData? suffixIcon;
  const SignUpTextField(
      {Key? key,
      required this.hintText,
      required this.prefeixIcon,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .85,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: Icon(prefeixIcon),
            suffixIcon: Icon(suffixIcon),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.0),
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}