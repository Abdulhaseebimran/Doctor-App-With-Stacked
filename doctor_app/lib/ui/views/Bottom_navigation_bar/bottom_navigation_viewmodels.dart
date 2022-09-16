import 'package:doctor_app/ui/views/Calendar/calendar_views.dart';
import 'package:doctor_app/ui/views/Doctor_list/doctor_list.dart';
import 'package:doctor_app/ui/views/doctor_details/doctor_details.dart';
import 'package:doctor_app/ui/views/home/home_views.dart';
import 'package:stacked/stacked.dart';

import '../Dummy_views/dummy.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int selected = 0;
  List pages = const  [
    HomeViews(),
    CalendarViews(),
    DoctorDetails(),
    DoctorList(),
    DoctorDetails(),
  ];
  void onItemTapped(int index) {
    selected = index;
    notifyListeners();
  }
}