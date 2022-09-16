import 'package:doctor_app/ui/views/SignUp/signup_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';


import '../../../constants/colors.dart';
import '../../../constants/image_const.dart';
import '../../../constants/text_const.dart';
import '../../widgets/custom_checkBox.dart';
import '../../widgets/custom_text_btn.dart';
import '../../widgets/grey_text.dart';
import '../../widgets/login_blue_btn.dart';
import '../../widgets/signup_textfields.dart';
import '../../widgets/social_media_mini_btn.dart';

class SignUpViews extends StatefulWidget {
  const SignUpViews({Key? key}) : super(key: key);

  @override
  State<SignUpViews> createState() => _SignUpViewsState();
}

class _SignUpViewsState extends State<SignUpViews> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.nonReactive(
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, model, child) => Scaffold(
       appBar: AppBar(
         backgroundColor: ColorConstant.whiteColor,
        leading: IconButton(onPressed: (){
          model.navigateToLogin();
        } ,
         icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,))
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
           Center(
            child: Image(image: AssetImage(ImagesConstants.signUpLogo)),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Text(TextConstant.createNew,
              style: GoogleFonts.lato(
                fontSize: 30, fontWeight: FontWeight.bold,
              )),
            ),
            SignUpTextField(hintText: TextConstant.email,
             prefeixIcon: Icons.email_rounded, 
            suffixIcon: null),
            SignUpTextField(hintText: TextConstant.password,
           prefeixIcon: Icons.lock_clock_rounded,
           suffixIcon: Icons.remove_red_eye_rounded),
            Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const CustomCheckBox(),
              Text(TextConstant.rememberMe,style: const TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold, color: Colors.black),),
            ],
           ),
         ),
         LoginBlueBtn(text: TextConstant.signup, modelRoute: (){
          model.navigateToLogin();
         },),
         Padding(
         padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: GreyText(text: TextConstant.orContwith, leftRightPadding: 0),
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MiniSocialLoginButton(
               modelRoute: () {}, image: ImagesConstants.googleLogo,
          ),
          Padding(padding: const EdgeInsets.only(left: 12.0, right: 12),
               child: MiniSocialLoginButton( modelRoute: () {},
                      image: ImagesConstants.fbbLogo,
                    ),
                  ),
           MiniSocialLoginButton( modelRoute: () {},
                    image: ImagesConstants.appleLogo,
                  ),
          ],
         ),  Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GreyText(
                        text: TextConstant.alreadyHaveAnAccount,
                        leftRightPadding: 10),
                    CustomTextButton(
                        modelRoute: (){
                          model.navigateToLogin();
                        },
                        text: TextConstant.signin)
                  ],
                ),
              ),
         ],
        ),
      ),
    ));
  }
}