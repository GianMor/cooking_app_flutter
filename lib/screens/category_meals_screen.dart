import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final int categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen({this.categoryId, this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        body: ListView.builder(
            itemBuilder: (contet, index) {
              return null;
            }, itemCount: categoryMeals.length));
  }
}
