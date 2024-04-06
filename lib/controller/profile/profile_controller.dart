import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class ProfileController extends GetxController {
  goToSetting() {
    Get.toNamed(AppRoute.setting);
  }
}
