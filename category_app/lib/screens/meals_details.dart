import 'package:flutter/material.dart';
import 'package:category_app/models/meal.dart';

class MealsDetails extends StatelessWidget {
  const MealsDetails({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Image.network(
          meal.imageUrl,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ));
  }
}
