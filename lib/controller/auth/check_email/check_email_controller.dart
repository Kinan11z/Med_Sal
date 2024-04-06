import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class CheckEmailController extends GetxController {
  goToVerifyCode() {
    Get.toNamed(AppRoute.verifyCode);
  }
}
