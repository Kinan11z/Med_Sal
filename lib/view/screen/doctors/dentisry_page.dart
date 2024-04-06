import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/doctors/dentisry/service_dentisry.dart';
import 'package:med_sal/view/widgets/doctors/sliver_appbar.dart';

class DentisryPage extends StatelessWidget {
  const DentisryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //****************  Sliver AppBar  ********************/
          CustomSliverAppBar(image: AppImages.room1),

          //****************  Service Dentisry Area ********************/
          SliverToBoxAdapter(
            child: ServiceDentisry(),
          ),
        ],
      ),
    );
  }
}

//******************************************************** */

// import 'package:flutter/material.dart';
// import 'package:med_sal/core/constant/app_images.dart';
// import 'package:med_sal/view/widgets/doctors/dentisry/service_dentisry.dart';
// import 'package:med_sal/view/widgets/doctors/sliver_appbar.dart';

// class DentisryPage extends StatelessWidget {
//   const DentisryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           final SliverOverlapAbsorberHandle sliverOverlapAbsorberHandle =
//               NestedScrollView.sliverOverlapAbsorberHandleFor(context);
//           return <Widget>[
//             SliverOverlapAbsorber(
//               handle: sliverOverlapAbsorberHandle,
//               sliver: CustomSliverAppBar(image: AppImages.room1),
//             ),
//           ];
//         },
//         body: Builder(
//           builder: (BuildContext context) {
//             final SliverOverlapAbsorberHandle sliverOverlapAbsorberHandle =
//                 NestedScrollView.sliverOverlapAbsorberHandleFor(context);
//             return CustomScrollView(
//               slivers: <Widget>[
//                 SliverOverlapInjector(
//                   handle: sliverOverlapAbsorberHandle,
//                 ),
//                 SliverToBoxAdapter(
//                   child: ServiceDentisry(),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
