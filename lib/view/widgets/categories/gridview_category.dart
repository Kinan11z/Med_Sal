import 'package:flutter/material.dart';
import 'package:med_sal/view/widgets/categories/container_category.dart';

class GridViewCategory extends StatelessWidget {
  const GridViewCategory(
      {super.key, required this.dataSource, required this.onTap});

  final List dataSource;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dataSource.length, //number of container
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          childAspectRatio: 0.9),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: onTap,
          child: ContainerCategory(
              image: dataSource[index]['image']!,
              text: dataSource[index]['text']!,
              title: dataSource[index]['title']!),
        );
      },
    );
  }
}
