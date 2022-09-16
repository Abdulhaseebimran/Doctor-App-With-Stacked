import 'package:doctor_app/constants/text_const.dart';
import 'package:doctor_app/ui/views/Calendar/calendar_viewmodels.dart';
import 'package:doctor_app/ui/widgets/calendar_btn.dart';
import 'package:doctor_app/ui/widgets/custom_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarViews extends StatelessWidget {
  const CalendarViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CalendarViewsModels>.nonReactive(
      viewModelBuilder: () => CalendarViewsModels(),
      builder: (context, model, child) =>Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(TextConstant.bookAppointment,style: 
        GoogleFonts.poppins(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new,size: 30,
      color: Colors.black,)),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Text("Select Date",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,
          fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey.shade200
                ),
                child: SizedBox(child: TableCalendar(
                  focusedDay: DateTime.now(), 
                  firstDay: DateTime.utc(2022,9,16),
                   lastDay: DateTime.utc(2050,10,20),
                   headerVisible: true,
                   shouldFillViewport: false,
                   sixWeekMonthsEnforced: false,
                   headerStyle: HeaderStyle(titleTextStyle: 
                   GoogleFonts.inter(fontSize: 18, color: Colors.black,
                   fontWeight: FontWeight.bold)),
                   calendarStyle: CalendarStyle(todayTextStyle: GoogleFonts.inter(
                    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
                   )),
                   ),),
              )
            ],
          ),
          SizedBox(height: 30,
          child: Text("Select Hours",
          style: GoogleFonts.inter(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
          ),),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CalendarButtonFilter(
              text: "9:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "10:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "11:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "12:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CalendarButtonFilter(
              text: "1:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "2:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "3:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "4:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CalendarButtonFilter(
              text: "5:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "6:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "7:00 AM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed),
              CalendarButtonFilter(
              text: "8:00 PM", 
              modelRoute1: model.setPressed,
              modelRoute2: model.navigateToCategories,
              colorCondition: model.pressed)
            ],
          ),
          const SizedBox(height: 20,),
         Center(child: CustomBlueButton(text: "Next",
          modelRoute: (){}),),
          const SizedBox(height: 30,)
        ],
      ),
    ),
    ));
  }
}