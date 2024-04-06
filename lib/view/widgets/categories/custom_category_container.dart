import 'package:flutter/material.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer(
      {super.key, required this.color, this.text = ''});

  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(1, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 30),
      ),
    );
  }
}
