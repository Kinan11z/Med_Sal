import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/doctors/optical/service_optical.dart';
import 'package:med_sal/view/widgets/doctors/sliver_appbar.dart';

class OpticalPage extends StatelessWidget {
  const OpticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //****************  Sliver AppBar  ********************/
          CustomSliverAppBar(image: AppImages.optical),

          //****************  Service Optical Area ********************/
          SliverToBoxAdapter(
            child: ServiceOptical(),
          ),
        ],
      ),
    );
  }
}
