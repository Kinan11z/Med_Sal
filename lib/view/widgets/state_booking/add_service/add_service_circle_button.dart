import 'package:flutter/material.dart';

class AddServiceCircleButton extends StatelessWidget {
  const AddServiceCircleButton(
      {super.key,
      required this.circleColor,
      required this.textColor,
      required this.text});

  final Color circleColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 14),
      ),
    );
  }
}
