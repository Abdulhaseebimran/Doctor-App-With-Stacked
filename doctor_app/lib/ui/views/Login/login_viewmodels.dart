import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app_locator.dart';
import '../../../app/app_routes.dart';


class LoginViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();

  void navigateToSignUp() {
    navService.navigateTo(Routes.signUpView);
  }

  void navigateToHome() {
    navService.navigateTo(Routes.btmNavView);
  }
}