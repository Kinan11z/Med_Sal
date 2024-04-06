import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/doctor_appointment/doctor_appointment_controller.dart';
import 'package:med_sal/controller/service_appoitment/service_appoitment_controller.dart';
import 'package:med_sal/view/widgets/app_button.dart';
import 'package:med_sal/view/widgets/doctors/doctor_appointment/doctor_appointment_calender.dart';
import 'package:med_sal/view/widgets/doctors/doctor_appointment/doctor_appointment_container.dart';

class DoctorAppointment extends GetView<ServiceAppoitmentController> {
  const DoctorAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceAppoitmentController serviceAppoitmentController =
        Get.put(ServiceAppoitmentController());
    DoctorAppointmentController doctorAppointmentController =
        Get.put(DoctorAppointmentController());
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //****************  Custom Calender   *********************** */
            const Padding(
                padding: EdgeInsets.only(top: 10), child: CustomCalender()),
            SizedBox(height: height * 0.03),
            //****************  Button   *********************** */
            SizedBox(
              width: width * 0.4,
              child: AppButton(
                fontSize: 14,
                radius: 45,
                text: 'Available Time',
                onTap: () {},
              ),
            ),
            SizedBox(height: height * 0.02),
            //****************  Service 1 Container   *********************** */
            Expanded(
              flex: 1,
              child: DoctorAppointmentContainer(
                text: 'Service 1',
                onPressed: () {
                  serviceAppoitmentController.setTitle('Service 1');
                  doctorAppointmentController.goToServiceAppointment();
                },
              ),
            ),
            SizedBox(height: height * 0.02),
            //****************  Service 2 Container   *********************** */
            Expanded(
              flex: 1,
              child: DoctorAppointmentContainer(
                text: 'Service 2',
                onPressed: () {
                  serviceAppoitmentController.setTitle('Service 2');
                  doctorAppointmentController.goToServiceAppointment();
                },
              ),
            ),
            SizedBox(height: height * 0.02),
            //****************  Service 3 Container   *********************** */
            Expanded(
              flex: 1,
              child: DoctorAppointmentContainer(
                text: 'Service 3',
                onPressed: () {
                  serviceAppoitmentController.setTitle('Service 3');
                  doctorAppointmentController.goToServiceAppointment();
                },
              ),
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
