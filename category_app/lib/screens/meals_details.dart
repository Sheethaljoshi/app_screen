import 'package:flutter/material.dart';
import 'package:category_app/models/meal.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body:Column(children: [
          Image.network(
          meal.imageUrl,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ), 
        const SizedBox(height: 14,),
        Text('Ingredients', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),),
        const SizedBox(height: 14,),
        for(final ingredient in meal.ingredients)
          Text(ingredient, textAlign: TextAlign.left,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary, ),),
        const SizedBox(height: 24,),
        Text('Instructions', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),),
        const SizedBox(height: 14,),
        for(final step in meal.steps)
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Text(step, textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary, ),),
       ),
        const SizedBox(height: 24,)
          

        ],));
  }
}
