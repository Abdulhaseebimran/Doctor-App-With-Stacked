import 'package:doctor_app/ui/views/Calendar/calendar_views.dart';
import 'package:doctor_app/ui/views/Doctor_list/doctor_list.dart';
import 'package:doctor_app/ui/views/Login/login_views.dart';
import 'package:doctor_app/ui/views/SignUp/signup_views.dart';
import 'package:doctor_app/ui/views/doctor_details/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/Bottom_navigation_bar/bottom_nav.dart';

class Routes {
  static const String loginView = '/';
  static const String signUpView = '/signup-views';
  static const String btmNavView = '/btm-nav-view';
  static const String doctorDetailsView = '/categories-view';
  static const String doctorListView = '/doctor-details-view';
  static const String calendarViews = '/calendar-view';
  static const all = <String>{
    loginView,
    signUpView,
    btmNavView,
    doctorDetailsView,
    doctorListView,
    calendarViews,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginView, page: LoginViews),
    RouteDef(Routes.signUpView, page: SignUpViews),
    RouteDef(Routes.btmNavView, page: BottomNavigationView),
    RouteDef(Routes.doctorDetailsView, page: DoctorDetails),
    RouteDef(Routes.doctorListView, page: DoctorList),
    RouteDef(Routes.calendarViews, page: CalendarViews),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LoginViews: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginViews(),
        settings: data,
      );
    },
    SignUpViews: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpViews(),
        settings: data,
      );
    },
    BottomNavigationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BottomNavigationView(),
        settings: data,
      );
    },
    DoctorDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DoctorDetails(),
        settings: data,
      );
    },
    DoctorList: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DoctorList(),
        settings: data,
      );
    },
     CalendarViews: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CalendarViews(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************
extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToLoginView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.loginView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSignupView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.signUpView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToBtmNavView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.btmNavView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToDoctorDetailsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.doctorDetailsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToDoctolistView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.doctorListView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
   Future<dynamic> navigateToCalendarView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.calendarViews,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}