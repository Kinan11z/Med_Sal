import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class EditingServicesController extends GetxController {
  goToAddService() {
    Get.toNamed(AppRoute.addService);
  }
}
