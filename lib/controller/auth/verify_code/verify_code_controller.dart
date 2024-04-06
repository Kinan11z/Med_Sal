import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class VerifyCodeController extends GetxController {
  String previousRoute = Get.previousRoute;

  goToNextPage() {
    if (previousRoute == AppRoute.checkEmail) {
      Get.offNamed(AppRoute.login);
    } else if (previousRoute == AppRoute.forgotPassword) {
      Get.offNamed(AppRoute.resetPassword);
    }
  }
}
