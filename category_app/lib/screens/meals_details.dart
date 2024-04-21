import 'package:flutter/material.dart';
import 'package:category_app/models/meal.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen(
      {super.key, required this.meal, required this.onToggleFavorite});

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          actions: [
            IconButton(
              onPressed: () {
                onToggleFavorite(meal);
              },
              icon: const Icon(Icons.star),
            )
          ],
        ),
        body: ListView(
          children: [
            Image.network(
              meal.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 2), // Change the value as needed
              child: Text(
                'Ingredients',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.amber),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            for (final ingredient in meal.ingredients)
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 2), // Change the value as needed
                child: Text(
                  ingredient,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 2), // Change the value as needed
              child: Text(
                'Instructions',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.amber),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            for (final step in meal.steps)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 2), // Change the value as needed
                  child: Text(
                    step,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              ),
            const SizedBox(
              height: 24,
            )
          ],
        ));
  }
}
