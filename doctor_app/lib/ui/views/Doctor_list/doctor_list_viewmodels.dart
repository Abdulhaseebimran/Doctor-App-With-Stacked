import 'package:doctor_app/app/app_locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app_routes.dart';

class DoctorListViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();

  void navigateToDetails() {
    navService.navigateTo(Routes.doctorListView);
  }
}