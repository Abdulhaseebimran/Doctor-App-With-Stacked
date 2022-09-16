import 'package:flutter/material.dart';

class MiniSocialLoginButton extends StatelessWidget {
  final String image;
  final Function()? modelRoute;
  
  const MiniSocialLoginButton({Key? key, required this.image, required this.modelRoute,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * .07,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(3),
            backgroundColor:
                MaterialStateProperty.all(Colors.white.withOpacity(1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Color(0xffE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: modelRoute,
          child: Image(
            image: AssetImage(image),
            height: 35,
          ),
        ),
      ),
    );
  }
}