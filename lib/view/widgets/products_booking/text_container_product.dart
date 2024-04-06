import 'package:flutter/material.dart';

class TextContainerProduct extends StatelessWidget {
  const TextContainerProduct(
      {super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          TextSpan(
              text: text1,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontSize: 16)),
          TextSpan(
            text: text2,
          ),
        ],
      ),
    );
  }
}
