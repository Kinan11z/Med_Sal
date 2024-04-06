import 'package:flutter/material.dart';

class MiddleTextHomePage extends StatelessWidget {
  const MiddleTextHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            'Get The Best Health Care Services For a More Comfortable Life.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Text(
            "Don't let illness or ill health sneak up on you. So, get our health services, and get your most up-to-date health information form in over 155,000 compatible and clinically verified medical journals.",
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
