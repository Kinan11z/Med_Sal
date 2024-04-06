import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/available_doctor/available_doctor_controller.dart';
import 'package:med_sal/controller/dentisry/dentisry_controller.dart';
import 'package:med_sal/core/constant/app_images.dart';
import 'package:med_sal/view/widgets/doctors/doctor_services_container.dart';

class ServiceDentisryTabBarView extends GetView<AvailableDoctorController> {
  const ServiceDentisryTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    AvailableDoctorController availableDoctorController =
        Get.put(AvailableDoctorController());
    DentisryController dentisryController = Get.put(DentisryController());
    return Expanded(
      child: TabBarView(
        children: [
          //*1//*****************  ListView   ************* */
          ListView(
            children: [
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Whitening Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Whitening Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Orthodontics',
                onTap: () {
                  availableDoctorController.textServiceValue('Orthodontics');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Cleaning Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Cleaning Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
            ],
          ),
          //*2//*****************  ListView   ************* */
          ListView(
            children: [
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Whitening Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Whitening Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Orthodontics',
                onTap: () {
                  availableDoctorController.textServiceValue('Orthodontics');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Cleaning Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Cleaning Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
            ],
          ),
          //*3//*****************  ListView   ************* */
          ListView(
            children: [
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Whitening Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Whitening Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Orthodontics',
                onTap: () {
                  availableDoctorController.textServiceValue('Orthodontics');
                  dentisryController.goToAvailableDoctor();
                },
              ),
              DoctorServicesContainer(
                image: AppImages.profile,
                text: 'Cleaning Teeth',
                onTap: () {
                  availableDoctorController.textServiceValue('Cleaning Teeth');
                  dentisryController.goToAvailableDoctor();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
