import 'package:flutter/material.dart';
import 'package:med_sal/data/datasource/static/doctors_data.dart';
import 'package:med_sal/view/widgets/doctors/container_doctors.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctors',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: ListView.builder(
        itemCount: doctorsData.length,
        padding: const EdgeInsets.only(top: 10),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ContainerDoctors(
            index: index,
          ),
        ),
      ),
    );
  }
}
