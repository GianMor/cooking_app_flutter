import 'package:cooking_app_flutter/models/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String url;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {@required this.title,
      @required this.url,
      @required this.duration,
      @required this.complexity,
      @required this.affordability});

  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  url,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
