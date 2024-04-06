import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class ServiceAppoitmentController extends GetxController {
  String? title;
  String payment = 'cache';

  setTitle(String value) {
    title = value;
    update();
  }

  setPayment(String value) {
    payment = value;
    update();
  }

  goToMySchedule() {
    Get.toNamed(AppRoute.mySchedule);
  }
}
