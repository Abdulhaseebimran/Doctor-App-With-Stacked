import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorImageContainer extends StatelessWidget {
  late String image;
  DoctorImageContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      // height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
      child: Image(
        image: AssetImage(
          image, 
        ),
        height: 100,
      ),
    );
  }
}