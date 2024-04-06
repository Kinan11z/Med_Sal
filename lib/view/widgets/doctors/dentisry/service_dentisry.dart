import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/view/widgets/doctors/dentisry/service_dentisry_tab_bar_view.dart';
import 'package:med_sal/view/widgets/doctors/search_doctor.dart';

class ServiceDentisry extends StatelessWidget {
  const ServiceDentisry({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width,
      height: height * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        border: Border.all(width: 2, color: AppColors.containerGreenColor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03),
            //*******************  Search  ***************************/
            SizedBox(
              height: height * 0.05,
              child: const DoctorSearch(hintText: '       Search'),
            ),
            //*******************  Text  ***************************/
            Text(
              'Lorem ipsum dolor sit amet consectetur. Eu enim lectus vitae urna.',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(height: height * 0.03),
            //*******************  Text  ***************************/
            const Text('Services'),
            //*******************  Default Tab Controller  ***************************/
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    //**************  Service Dentisry TabBarView  ***************************/
                    const ServiceDentisryTabBarView(),
                    Builder(
                      builder: (BuildContext context) => const TabPageSelector(
                        selectedColor: AppColors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
