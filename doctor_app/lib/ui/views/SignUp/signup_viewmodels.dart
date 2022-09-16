import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app_locator.dart';
import '../../../app/app_routes.dart';

class SignupViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();
  void navigateToLogin() {
    navService.navigateTo(Routes.loginView);
  }
}