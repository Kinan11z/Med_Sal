import 'package:get/get.dart';
import 'package:med_sal/data/datasource/static/categories_data.dart';

class CategoriesController extends GetxController {
  goToCategory(int index) {
    Get.toNamed(categoriesData[index]['route']!);
  }
}
