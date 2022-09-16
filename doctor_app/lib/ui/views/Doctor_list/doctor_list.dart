import 'package:doctor_app/ui/views/Doctor_list/doctor_list_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/image_const.dart';
import '../../../constants/text_const.dart';
import '../../widgets/custom_text_widgets.dart';
import '../../widgets/top_doctor_list.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoctorListViewModel>.nonReactive(
      viewModelBuilder: () => DoctorListViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: CustomTextWidget(text: TextConstant.topDoc, fontSize: 22.0),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search,size: 30,color: Colors.black,),
            ),
            Padding(padding: const EdgeInsets.only(right: 14.0),
            child: IconButton(
           onPressed: () {}, icon: const Icon(Icons.more_horiz, size: 30,
           color: Colors.black,))),
          ],
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,
          size: 25, color: Colors.black,), 
          onPressed: (){},),
        ),
        body: Center(
          child: Column(
            children: [
            Expanded(
            child: ListView(
              children: [
                TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doctor,
                        largeText: TextConstant.doctorname,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doc,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doctor,
                        largeText: TextConstant.doctorname,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doc,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                  TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doctor,
                        largeText: TextConstant.doctorname,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImagesConstants.doc,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.immundoc,
                        smallText2: TextConstant.cityHosp),
                    
              ],
            ))
            ],
          ),
        ),
    ));
  }
}