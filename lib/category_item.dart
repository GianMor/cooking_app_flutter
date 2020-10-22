import 'package:cooking_app_flutter/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int id;
  final String title;
  final Color color;

  const CategoryItem({this.id,this.title, this.color});

  void selectategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals',arguments: {'id':id,'title':title});
    // Navigator.of(ctx)
    //     .push(MaterialPageRoute(builder: (_) => CategoryMealsScreen(categoryId: id,categoryTitle: title)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
