import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, required this.onTap, required this.color});

  final Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: 'See All',
          style: TextStyle(
              fontSize: 18, color: color, fontWeight: FontWeight.w400),
          children: [
            WidgetSpan(
              child: Icon(
                Icons.arrow_forward,
                color: color,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
