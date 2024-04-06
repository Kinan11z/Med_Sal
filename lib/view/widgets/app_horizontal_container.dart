import 'package:flutter/material.dart';

class AppHorizontalContainer extends StatelessWidget {
  const AppHorizontalContainer(
      {super.key, required this.color, this.width = 124, this.height = 6});

  final Color color;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
    );
  }
}
