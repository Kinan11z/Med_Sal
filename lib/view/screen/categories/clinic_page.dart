import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/indexed_stack/indexed_stack_controller.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/hospitals_data.dart';
import 'package:med_sal/view/widgets/categories/circle_category.dart';
import 'package:med_sal/view/widgets/categories/double_category_container.dart';
import 'package:med_sal/view/widgets/categories/gridview_category.dart';
import 'package:med_sal/view/widgets/categories/paper_container_category.dart';

class ClinicPage extends StatelessWidget {
  const ClinicPage({super.key});

  @override
  Widget build(BuildContext context) {
    IndexedStackController indexedStackController =
        Get.put(IndexedStackController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBarColor,
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: width * 0.9,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  //*********************  Clinic Container  *************************/
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: DoubleCategoryContainer(text: 'Clinic')),
                  //********************  Text With Circle ********************/
                  Stack(
                    children: [
                      SizedBox(width: width, height: height * 0.1),
                      Text(
                          'Lorem ipsum dolor sit amet consectetur. Lectus lacus phasellus enim vitae id integer tincidunt. Tincidunt suspendisse aliquam pretium ut dapibus mus ut et.',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: AppColors.buttonGreen)),
                      Positioned(
                          left: width * 0.8,
                          top: 50,
                          child: const CircleCategory())
                    ],
                  ),
                  const SizedBox(height: 30),
                  //********************* Services Container  ***********************/
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: PaperContainerCategory(text: 'Services')),
                  //********************* Circle Container  ***********************/
                  const Padding(
                    padding: EdgeInsets.only(right: 15, bottom: 10),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: CircleCategory()),
                  ),
                  //********************* GridView Services Container  ***********************/
                  SizedBox(
                    height: (hospitalsServicesData.length / 2).ceil() * 210,
                    child: GridViewCategory(
                      onTap: () {
                        indexedStackController.changeIndex(7); //New
                        // clinicController.goToServicePage();//todo
                      },
                      dataSource: hospitalsServicesData,
                    ),
                  ),
                  //***************** Products Container  ***************/
                  const SizedBox(height: 20),
                  SizedBox(
                    width: width,
                    child: const Stack(
                      children: [
                        PaperContainerCategory(text: 'Products'),
                        Positioned(left: 220, child: CircleCategory()),
                        Positioned(left: 300, top: 30, child: CircleCategory()),
                      ],
                    ),
                  ),
                  //********************* GridView Products Container  ***********************/
                  const SizedBox(height: 20),
                  SizedBox(
                    height: (hospitalsServicesData.length / 2).ceil() * 210,
                    child: GridViewCategory(
                      onTap: () {
                        indexedStackController.changeIndex(8); //New
                        // clinicController.goToProductPage(); //todo
                      },
                      dataSource: hospitalsServicesData,
                    ),
                  ),
                  const SizedBox(height: 200)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
