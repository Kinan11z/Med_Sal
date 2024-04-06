import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class DoctorAppointmentController extends GetxController {
  goToServiceAppointment() {
    Get.toNamed(AppRoute.serviceAppoitment);
  }
}
