import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/indexed_stack/indexed_stack_controller.dart';
import 'package:med_sal/data/datasource/static/categories_data.dart';
import 'package:med_sal/view/widgets/categories/card_categories.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    IndexedStackController indexedStackController =
        Get.put(IndexedStackController());
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SizedBox(
            width: width * 0.9,
            child: ListView.builder(
              itemCount: categoriesData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 182,
                    child: CategoriesCard(
                      index: index,
                      onTap: () {
                        indexedStackController.changeIndex(index + 2); //New
                        // categoriesController.goToCategory(index); //todo
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
