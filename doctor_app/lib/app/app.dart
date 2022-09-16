import 'package:doctor_app/ui/views/Bottom_navigation_bar/bottom_nav.dart';
import 'package:doctor_app/ui/views/Doctor_list/doctor_list.dart';
import 'package:doctor_app/ui/views/Login/login_views.dart';
import 'package:doctor_app/ui/views/SignUp/signup_views.dart';
import 'package:doctor_app/ui/views/doctor_details/doctor_details.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginViews, initial: true),
  MaterialRoute(page: SignUpViews,),
  MaterialRoute(page: BottomNavigationView),
  MaterialRoute(page: DoctorDetails),
  MaterialRoute(page: DoctorList),
],
dependencies: [LazySingleton(classType: NavigationService)]
)
class AppSetup{}