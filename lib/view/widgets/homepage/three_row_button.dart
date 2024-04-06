import 'package:flutter/material.dart';
import 'package:med_sal/view/widgets/homepage/row_button.dart';

class ThreeRowButton extends StatelessWidget {
  const ThreeRowButton(
      {super.key,
      required this.onTapRegister,
      required this.onTapLogin,
      required this.onTapContactUs});

  final Function()? onTapRegister;
  final Function()? onTapLogin;
  final Function()? onTapContactUs;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRowButton(
          onTap: onTapRegister,
          text: 'Register',
        ),
        const SizedBox(width: 10),
        CustomRowButton(
          onTap: onTapLogin,
          text: 'Log in',
        ),
        const SizedBox(width: 10),
        CustomRowButton(
          onTap: onTapContactUs,
          text: 'Contact Us',
        ),
      ],
    );
  }
}
