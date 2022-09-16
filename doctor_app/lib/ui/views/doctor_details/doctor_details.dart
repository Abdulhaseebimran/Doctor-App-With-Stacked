import 'package:doctor_app/ui/views/doctor_details/doctor_details_viewsmodels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/image_const.dart';
import '../../../constants/text_const.dart';
import '../../widgets/blue_text.dart';
import '../../widgets/custom_blue_button.dart';
import '../../widgets/custom_text_btn.dart';
import '../../widgets/custom_text_widgets.dart';
import '../../widgets/doctor_image_container.dart';
import '../../widgets/home_icons_container.dart';
import '../../widgets/small_text.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoctorsDetailViewModel>.nonReactive(
      viewModelBuilder: () => DoctorsDetailViewModel(),
      builder: (context, model, child) =>Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black54),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: CustomTextWidget(
                 text: TextConstant.doctorname, fontSize: 20),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined,
                    color: Colors.black,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz_outlined,
                      color: Colors.black,
                      size: 30,),
                    ),
                  ),
                ],
                leading: IconButton(onPressed: (){},
                 icon: const Icon(Icons.arrow_back_ios_new_outlined,
                 color: Colors.black,)),
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
           Padding(padding: const EdgeInsets.symmetric(vertical: 6),
             child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(18),
           ),
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               DoctorImageContainer(image: ImagesConstants.doctor,),
               Padding(padding: const EdgeInsets.only(left: 18.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               CustomTextWidget(text: TextConstant.doctorname,
                   fontSize: 18),
                  Container( width:  MediaQuery.of(context).size.width * 0.6,
                    color: const Color(0xffe5e5e5),
                    height: MediaQuery.of(context).size.height *  .003,
                 ),
                  Padding(padding: const EdgeInsets.only(top: 10.0),
                  child: SmallText(text: TextConstant.immundoc)),
                   SmallText(text: TextConstant.cityHosp),
                ],
               ),
           ),
           ],
           ),
           
       )),Padding(padding: const EdgeInsets.all(12),
             child: SizedBox( width: MediaQuery.of(context).size.width * .88,
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                homeIconCont( icn: const Icon(
                Icons.groups, color: Colors.blue, ),),
                Padding( padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: BlueText(textt: TextConstant.fivek), ),
                 SmallText(text: TextConstant.patients)
               ],
           ), Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               homeIconCont( icn: const Icon( Icons.timeline_rounded, color: Colors.blue),
              ),Padding( padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BlueText(textt: TextConstant.tenPlus)),
              SmallText(text: TextConstant.yearsExp),
            ],
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               homeIconCont( icn: const Icon( Icons.star_half_rounded, color: Colors.blue),
              ),Padding( padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BlueText(textt: TextConstant.decimal)),
              SmallText(text: TextConstant.rating),
            ],
            ),
           Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               homeIconCont( icn: const Icon( Icons.reviews_rounded, color: Colors.blue),
              ),Padding( padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BlueText(textt: TextConstant.randomNo)),
              SmallText(text: TextConstant.reviews),
            ],
            ),
          ]
         ))),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(text: TextConstant.aboutMe, fontSize: 20,),
          ],
         ),
         SizedBox(child: Text(TextConstant.descriptionText,style: GoogleFonts.poppins(fontSize:16)),),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(padding: const EdgeInsets.only(top: 12.0),
             child: CustomTextWidget(text: TextConstant.workingTime, fontSize: 20,)),
           ],
         ),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text(TextConstant.docTime)
           ],
         ),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           CustomTextWidget(text: TextConstant.capReviews, fontSize: 20),
           CustomTextButton( modelRoute: () {}, text: TextConstant.seeAll)
          ],
         ),
         Center(child: CustomBlueButton(
        text: TextConstant.bookAppointment,
          modelRoute: () {},
        ),
    ),
         ]
        )),
    ));
  }
}