import 'package:flutter/material.dart';
import 'package:make_yum/src/models/recipe.dart';

class RecipeModal extends StatelessWidget {
  final List<Recipe> recipes;
  const RecipeModal({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        recipe.category ?? 'No Category',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        recipe.cookingTime,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        recipe.difficulty ?? 'No Descriptin',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        recipe.difficulty ?? 'No Difficulty',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      ...recipe.ingredients
                          .map((ingredient) => Text(
                                '${ingredient.name} ${ingredient.quantity} ${ingredient.unit}',
                                style: const TextStyle(fontSize: 16),
                              ))
                          .toList(),
                      const SizedBox(height: 5),
                      Text(
                        recipe.instructions,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Nutrition Info:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Carbohydrates: ${recipe.nutritionInfo?.carbohydrates}'),
                      Text('Fat: ${recipe.nutritionInfo?.fat}'),
                      Text('Protein: ${recipe.nutritionInfo?.protein}'),
                      Text('Sodium: ${recipe.nutritionInfo?.sodium}'),
                      Text('Sugar: ${recipe.nutritionInfo?.sugar}'),
                      Text('Fiber: ${recipe.nutritionInfo?.fibre}'),
                      const SizedBox(height: 5),
                      Text(
                        recipe.author ?? 'No Author',
                      )
                    ],
                  )));
        },
      ),
    );
  }
}
