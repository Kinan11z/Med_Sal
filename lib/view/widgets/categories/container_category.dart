import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';

class ContainerCategory extends StatelessWidget {
  const ContainerCategory(
      {super.key,
      required this.image,
      required this.title,
      required this.text});

  final String image;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      //************   Decoration  ********* */
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0.0)
        ],
      ),
      //*******************  Child Container  *********** */
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            //*/******************** Image ******** */
            child: Container(
              width: 157,
              height: 99,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.containerGreenColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //*/******************** Title ***************/
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          //*/******************** Text **************/
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(text, style: Theme.of(context).textTheme.bodySmall),
            ),
          )
        ],
      ),
    );
  }
}
