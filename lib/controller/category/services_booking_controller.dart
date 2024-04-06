import 'package:get/get.dart';
import 'package:med_sal/core/constant/app_routes.dart';

class ServicesBookingController extends GetxController {
  goToDetailsPage() {
    Get.toNamed(AppRoute.detailsService);
  }
}
