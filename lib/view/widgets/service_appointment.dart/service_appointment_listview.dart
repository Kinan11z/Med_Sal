import 'package:flutter/material.dart';
import 'package:med_sal/view/widgets/service_appointment.dart/service_appoitment_container.dart';

class ServiceAppoitmentListView extends StatelessWidget {
  const ServiceAppoitmentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ServiceAppoitmentContainer(
            text: 'Morning',
            times: ['9:00', '9:30', '10:30', '11:30', '12:30', '13:30'],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ServiceAppoitmentContainer(
              text: 'Afternoon',
              times: ['2:00', '3:30', '4:30', '5:30', '6:30', '7:30']),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ServiceAppoitmentContainer(
              text: 'Evening',
              times: ['8:30', '9:30', '10:30', '11:30', '0:30', '1:30']),
        ),
      ],
    );
  }
}
