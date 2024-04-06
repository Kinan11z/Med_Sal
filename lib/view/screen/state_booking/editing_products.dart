import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/state_booking/editing_products_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/products_data.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/app_horizontal_container.dart';
import 'package:med_sal/view/widgets/state_booking/state_booking_container.dart';

class EditingProducts extends StatelessWidget {
  const EditingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    EditingProductController controller = Get.put(EditingProductController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Editing Products',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.01),
              Text(
                'Products',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              //************  Horizontal Container  ************ */
              const AppHorizontalContainer(
                width: 100,
                color: AppColors.containerGreenColor,
              ),
              SizedBox(height: height * 0.01),
              //***************  Products List  *********** */
              Expanded(
                child: ListView.builder(
                  itemCount: productsData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: StateBookingContainer(
                        index: index,
                        name: productsData[index]['name']!,
                      ),
                    );
                  },
                ),
              ),
              //**************  Add Button  ********** */
              SizedBox(height: height * 0.01),
              AppButton(
                text: 'Add',
                onTap: () {
                  controller.goToAddProduct();
                },
              ),
              SizedBox(height: height * 0.05)
            ],
          ),
        ),
      ),
    );
  }
}
