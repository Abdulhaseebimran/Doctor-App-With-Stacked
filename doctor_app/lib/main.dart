import 'package:doctor_app/app/app_routes.dart';
import 'package:doctor_app/ui/views/Doctor_list/doctor_list.dart';
import 'package:doctor_app/ui/views/Login/login_views.dart';
import 'package:doctor_app/ui/views/SignUp/signup_views.dart';
import 'package:doctor_app/ui/views/doctor_details/doctor_details.dart';
import 'package:doctor_app/ui/views/home/home_views.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app_locator.dart';

void main() {
    setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASSIGNMENT # 9 DOCTOR APP WITH STACKED',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
       navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      // home: const DoctorList(),
    );
  }
}

