import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/app_colors.dart';
import 'package:med_sal/data/datasource/static/categories_data.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.index, required this.onTap});

  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    //************************ Card **************************/
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.greyCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    //************************ Title Card **************************/
                    Text(
                      categoriesData[index]['title']!,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.buttonGreen, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    //************************ description Card **************************/
                    Text(
                      categoriesData[index]['description']!,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),

            //************************ image Card **************************/
            Expanded(
              flex: 1,
              child: Container(
                height: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.buttonGreen),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Image.asset(
                  categoriesData[index]['image']!,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
