import 'package:cooking_app_flutter/category_item.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'category_item.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES.map((data) => CategoryItem(title: data.title,color: data.color,)).toList(),
    );
  }
}
