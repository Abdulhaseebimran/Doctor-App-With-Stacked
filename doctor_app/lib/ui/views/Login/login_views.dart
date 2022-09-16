import 'package:doctor_app/ui/views/Login/login_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_const.dart';
import '../../../constants/text_const.dart';
import '../../widgets/custom_text_btn.dart';
import '../../widgets/grey_text.dart';
import '../../widgets/login_blue_btn.dart';
import '../../widgets/social_media_btn.dart';

class LoginViews extends StatelessWidget {
  const LoginViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whiteColor,
        leading: IconButton(onPressed: (){} ,
         icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,))
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Image(
              image: AssetImage(ImagesConstants.loginLogo),
              height: MediaQuery.of(context).size.height * 0.3,)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Text(TextConstant.letsyouIn,
              style: GoogleFonts.lato(
                fontSize: 30, fontWeight: FontWeight.bold,
              )),
            ),
            SocilaLoginButton(
            image: ImagesConstants.fbbLogo,
            text: TextConstant.loginFb),
            SocilaLoginButton(
            image: ImagesConstants.googleLogo,
             text: TextConstant.loginGoogle),
             SocilaLoginButton(
            image: ImagesConstants.appleLogo,
           text: TextConstant.loginApple),
           Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: Colors.grey,
                      height: MediaQuery.of(context).size.height * .003,
                    ),
                GreyText(text: TextConstant.or, leftRightPadding: 32),
                 Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: Colors.grey,
                      height: MediaQuery.of(context).size.height * .003,
                    ),
          ],
        ),
      ),
      LoginBlueBtn(text: TextConstant.loginPassword,
       modelRoute: (){
        model.navigateToHome();
       },
       ),
      const SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GreyText(text: TextConstant.dontHaveAnAccount,
         leftRightPadding: 30),
         CustomTextButton(
          modelRoute: (){
            model.navigateToSignUp();
          }, 
         text: TextConstant.signup)
        ],
       )
      ])
    )));
  }
}