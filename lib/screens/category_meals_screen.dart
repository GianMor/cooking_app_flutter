import 'package:cooking_app_flutter/models/meal.dart';
import 'package:cooking_app_flutter/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _loaderInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loaderInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, Object>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedMeals = DUMMY_MEALS
          .where((meal) => meal.categories.contains(categoryId))
          .toList();
      _loaderInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(int mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(
                  id: displayedMeals[index].id,
                  title: displayedMeals[index].title,
                  url: displayedMeals[index].imageUrl,
                  duration: displayedMeals[index].duration,
                  complexity: displayedMeals[index].complexity,
                  affordability: displayedMeals[index].affordability,
                  removeItem: _removeMeal);
            },
            itemCount: displayedMeals.length));
  }
}
