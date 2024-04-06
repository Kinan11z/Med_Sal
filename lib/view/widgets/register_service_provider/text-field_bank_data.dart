import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:med_sal/view/widgets/doctors/search_doctor.dart';
import 'package:med_sal/view/widgets/register/textformfield_register.dart';

class BankDataTextField extends StatelessWidget {
  const BankDataTextField({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
    final isExpanded = ValueNotifier<bool>(false);

    return ValueListenableBuilder<bool>(
      valueListenable: isExpanded,
      builder: (BuildContext context, bool value, Widget? child) {
        return ExpansionTileCard(
          key: cardA,
          initiallyExpanded: isExpanded.value,
          onExpansionChanged: (bool expanded) {
            isExpanded.value = expanded;
          },
          title: TextFormFieldRegister(
            controller: controller,
            readOnly: true,
            hintText: 'Pleas enter data in fields ',
            labelText: 'Bank data',
            suffixIcon: IconButton(
                onPressed: () {
                  if (isExpanded.value) {
                    cardA.currentState?.collapse();
                  } else {
                    cardA.currentState?.expand();
                  }
                },
                icon: const Icon(Icons.arrow_drop_down)),
          ),
          children: const <Widget>[
            DoctorSearch(hintText: 'Bank name'),
            DoctorSearch(hintText: 'Swift code'),
            DoctorSearch(hintText: 'Ilban'),
          ],
        );
      },
    );
  }
}
