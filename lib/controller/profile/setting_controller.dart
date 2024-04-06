import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class SettingController extends GetxController {
  goToChangePassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
}
