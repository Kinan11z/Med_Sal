import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/indexed_stack/indexed_stack_controller.dart';
import 'package:med_sal/view/screen/categories/categories.dart';
import 'package:med_sal/view/screen/categories/clinic_page.dart';
import 'package:med_sal/view/screen/categories/hospital_page.dart';
import 'package:med_sal/view/screen/categories/labs_page.dart';
import 'package:med_sal/view/screen/categories/pharmacy_page.dart';
import 'package:med_sal/view/screen/categories/products_booking.dart';
import 'package:med_sal/view/screen/categories/services_booking.dart';
import 'package:med_sal/view/screen/doctors/doctor_page.dart';
import 'package:med_sal/view/screen/homepage/homepage.dart';

class AppStack extends StatelessWidget {
  const AppStack({super.key});

  @override
  Widget build(BuildContext context) {
    IndexedStackController indexedStackController =
        Get.put(IndexedStackController());
    return GetBuilder<IndexedStackController>(
      builder: (controller) {
        return IndexedStack(
          // Index of the child to display
          index: indexedStackController.index,
          children: const [
            HomePage(),
            CategoriesPage(),
            DoctorPage(),
            PharmaciesPage(),
            HospitalPage(),
            LabsPage(),
            ClinicPage(),
            ServicesBooking(),
            ProductsBooking()
          ],
        );
      },
    );
  }
}
