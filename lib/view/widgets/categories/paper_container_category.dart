import 'package:flutter/cupertino.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class PaperContainerCategory extends StatelessWidget {
  const PaperContainerCategory({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 186,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(75),
            topRight: Radius.circular(75),
          ),
          border: Border.all(color: AppColors.containerGreenColor, width: 3)),
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
