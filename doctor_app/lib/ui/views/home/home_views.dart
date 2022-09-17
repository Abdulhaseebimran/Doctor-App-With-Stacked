import 'package:doctor_app/ui/views/home/home_viewmodels.dart';
import 'package:doctor_app/ui/widgets/custom_text_btn.dart';
import 'package:doctor_app/ui/widgets/home_blue_cards.dart';
import 'package:doctor_app/ui/widgets/home_categorey_filters.dart';
import 'package:doctor_app/ui/widgets/home_category_btn.dart';
import 'package:doctor_app/ui/widgets/signup_textfields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/image_const.dart';
import '../../../constants/text_const.dart';
import '../../widgets/home_text_widgets.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
      appBar: AppBar(
         iconTheme: const IconThemeData(color: Colors.black54),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
               Image(
                image: AssetImage(ImagesConstants.doctor),
                height: 50,
            ),
             Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.greeting(),style: GoogleFonts.poppins(
                    fontSize: 18, color: Colors.grey
                  ),),
                  HomeTextWidget(text: TextConstant.doctorname)
                ],
              ),
          ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined, size: 30,)),
             Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline,size: 30,),
              ),
            ),
          ],
      ),
      body: Column(
        children: [
          Center(
            child: SignUpTextField(
            hintText: TextConstant.search,
         prefeixIcon: Icons.search, suffixIcon: Icons.filter_list_outlined
          )
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .24,
          child: PageView.builder(
            itemCount: 3,
          itemBuilder: (_, index){
            return HomeBlueCard(
              headText: TextConstant.medicalChecks,
             contText: TextConstant.cardText2, buttonText: TextConstant.checkNow,
             image: ImagesConstants.doctor, position: index.toDouble());
          }),),
          SizedBox(
          height: MediaQuery.of(context).size.height * .08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(" Doctor Speciality", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black,
            fontWeight: FontWeight.bold)),
            CustomTextButton(modelRoute: (){},
             text: TextConstant.seeAll)
          ]),),
          Padding(padding: const EdgeInsets.only(left: 12, bottom: 12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              homeCatergories(iconss: const Icon(Icons.people_alt_outlined,
              color: Colors.blue, size: 30,), textt: TextConstant.general),
              homeCatergories(iconss: Image.asset(ImagesConstants.tooth,cacheHeight: 30,
              color: Colors.blue,),
              textt: TextConstant.dentist),
              homeCatergories(iconss: const Icon(Icons.remove_red_eye_outlined,size: 30,
              color: Colors.blue,),
             textt: TextConstant.opthalmic),
             homeCatergories(iconss: const Icon(Icons.fastfood_outlined,
             color: Colors.blue, size: 30,), textt: TextConstant.nutritionist)
              ],
            ),
          ),),
           Padding(
              padding: const EdgeInsets.only(bottom: 12.0, top: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeCatergories(
                        iconss: ImageIcon(
                          AssetImage(ImagesConstants.brain),
                          color: Colors.blue,size: 30,
                        ),
                        textt: TextConstant.neurologist),
                    homeCatergories(
                        iconss: const Icon(
                          Icons.directions_walk,
                          color: Colors.blue, size: 30,
                        ),
                        textt: TextConstant.pediatric),
                     homeCatergories(
                        iconss: ImageIcon(
                          AssetImage(ImagesConstants.xray),
                          color: Colors.blue, size: 30,
                        ),
                        textt: TextConstant.radiologist),
                    homeCatergories(
                        iconss: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.blue, size: 30,
                        ),
                        textt: TextConstant.more),
                  ],
                ),
              ),
            ),SizedBox(
            height: MediaQuery.of(context).size.height * .08,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(" Top Doctor", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black,
            fontWeight: FontWeight.bold)),
            CustomTextButton(modelRoute: (){},
             text: TextConstant.seeAll)
          ]),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           HomeCategoriesFilter(
                    text: TextConstant.all,
                    modelRoute1: model.setPressed,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed),
                HomeCategoriesFilter(
                    text: TextConstant.general,
                    modelRoute1: model.setPressed2,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed2),
                HomeCategoriesFilter(
                    text: TextConstant.dentist,
                    modelRoute1: model.setPressed3,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed3),
                HomeCategoriesFilter(
                    text: TextConstant.nutritionist,
                    modelRoute1: model.setPressed4,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed4),
            ],
          )
        ],
      ),
    ));
  }
}