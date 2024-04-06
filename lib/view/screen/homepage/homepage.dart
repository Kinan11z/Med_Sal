import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/home_page/home_page_controller.dart';
import 'package:med_sal/view/widgets/homepage/about_us.dart';
import 'package:med_sal/view/widgets/homepage/appbar/action.dart';
import 'package:med_sal/view/widgets/homepage/appbar/title.dart';
import 'package:med_sal/view/widgets/homepage/clients_say.dart';
import 'package:med_sal/view/widgets/homepage/custom_welcometo.dart';
import 'package:med_sal/view/widgets/homepage/drawer/drawer_column.dart';
import 'package:med_sal/view/widgets/homepage/list_images.dart';
import 'package:med_sal/view/widgets/homepage/middle_text.dart';
import 'package:med_sal/view/widgets/homepage/our_services.dart';
import 'package:med_sal/view/widgets/homepage/search_field.dart';
import 'package:med_sal/view/widgets/homepage/three_row_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      endDrawer: const Drawer(child: DrawerColumn()),
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: false,
        title: const TitleAppbarHomePage(),
        actions: const [
          ActionAppbarHomePage(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                //******************* Med-Sal Text *******************//
                Text(
                  'Med-Sal',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                //******************* Search TextField *******************//
                const CustomSearchField(
                  hintText: '      Search',
                  suffixIcon: Icons.search,
                  suffixIconColor: Color.fromRGBO(207, 199, 199, 1),
                ),
                //******************* Three Row Button *******************//
                const SizedBox(height: 20),
                ThreeRowButton(
                  onTapRegister: () {
                    homePageController.goToRegister();
                  },
                  onTapLogin: () {
                    homePageController.goToLogin();
                  },
                  onTapContactUs: () {},
                ),
                const SizedBox(height: 20),
                //******************* Welcome To MED_SAL *******************//
                const WelcomeToMedSal(),
                //******************* Middle Text *******************//
                const MiddleTextHomePage(),
                //******************* About Us *******************//
                const AboutUs(),
                //******************* Our Services *******************//
                const OurServices(),
                //******************* List images *******************//
                const SizedBox(height: 80),
                const ListImages(),
                //******************* What Our Clients Say *******************//
                const SizedBox(height: 20),
                const ClientSay(),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
