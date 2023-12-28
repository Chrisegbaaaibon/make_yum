// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:make_yum/src/models/ingredient.dart';
import 'package:make_yum/src/models/nutrition_info.dart';
import 'package:make_yum/src/models/user.dart';
import 'package:make_yum/src/models/recipe.dart';
import 'package:make_yum/src/widgets/recipecard_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const String routeName = '/profile';
  static User user = User(
    id: 1,
    name: 'John Doe',
    email: 'chris@gmail.com',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
    dietaryPreference: 'Vegetarian',
    favouriteRecipes: [
      Recipe(
        title: 'Pasta',
        ingredients: [
          Ingredient(name: 'Pasta', quantity: '1 cup'),
          Ingredient(name: 'Tomato', quantity: '1'),
          Ingredient(name: 'Onion', quantity: '1'),
        ],
        instructions: 'Cook pasta and add tomato and onion',
        cookingTime: '30 mins',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/06/01/18/46/cook-2364221_1280.jpg',
        nutritionInfo: NutritionInfo(
          carbohydrates: "100",
          fat: "10",
          protein: "5",
          sodium: "10",
          sugar: "10",
          fibre: "10",
        ),
        category: 'Italian',
        difficulty: 'Easy',
        rating: 4.5,
        author: 'John Doe',
        authorImageUrl:
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      ),
      Recipe(
        title: 'Pasta',
        ingredients: [
          Ingredient(name: 'Pasta', quantity: '1 cup'),
          Ingredient(name: 'Tomato', quantity: '1'),
          Ingredient(name: 'Onion', quantity: '1'),
        ],
        instructions: 'Cook pasta and add tomato and onion',
        cookingTime: '30 mins',
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/06/01/18/46/cook-2364221_1280.jpg',
        nutritionInfo: NutritionInfo(
          carbohydrates: "100",
          fat: "10",
          protein: "5",
          sodium: "10",
          sugar: "10",
          fibre: "10",
        ),
        category: 'Italian',
        difficulty: 'Easy',
        rating: 4.5,
        author: 'John Doe',
        authorImageUrl:
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      ),
    ],
    nutritionInfo: NutritionInfo(
      carbohydrates: "100",
      fat: "10",
      protein: "5",
      sodium: "10",
      sugar: "10",
      fibre: "10",
    ),
  );

  void _showRecipeDetailsModal(BuildContext context, Recipe recipe) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.title,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.category ?? 'No Category',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.cookingTime,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.difficulty ?? 'No Descriptin',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.difficulty ?? 'No Difficulty',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              ...recipe.ingredients
                  .map((ingredient) => Center(
                        child: Text(
                          '${ingredient.name} ${ingredient.quantity}',
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ))
                  .toList(),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.instructions,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Nutrition Info:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Center(
                child: Text(
                    'Carbohydrates: ${recipe.nutritionInfo?.carbohydrates}'),
              ),
              Center(
                child: Text('Fat: ${recipe.nutritionInfo?.fat}'),
              ),
              Center(
                child: Text('Protein: ${recipe.nutritionInfo?.protein}'),
              ),
              Center(
                child: Text('Sodium: ${recipe.nutritionInfo?.sodium}'),
              ),
              Center(
                child: Text('Sugar: ${recipe.nutritionInfo?.sugar}'),
              ),
              Center(
                child: Text('Fibre: ${recipe.nutritionInfo?.fibre}'),
              ),
              Center(
                child: Text('Other: ${recipe.nutritionInfo?.other}'),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  recipe.author ?? 'No Author',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    recipe.authorImageUrl ??
                        'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const SizedBox(height: 10.0),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // Aligns the Row's children to the center
                  children: [
                    Text(
                      'Rating: ${recipe.rating}',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    const SizedBox(width: 5.0), // Space between text and icon
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          const Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              user.email,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 10.0),

          // Favorite Recipes Section
          user.favouriteRecipes != null && user.favouriteRecipes!.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Favourite Recipes',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 200, // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: user.favouriteRecipes!.length,
                        itemBuilder: (context, index) {
                          final recipe = user.favouriteRecipes![index];
                          return GestureDetector(
                            onTap: () =>
                                _showRecipeDetailsModal(context, recipe),
                            child: Card(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      recipe.imageUrl ??
                                          'https://via.placeholder.com/150',
                                      width: 160, // Adjust the width as needed
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      recipe.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child:
                                        Text(recipe.category ?? 'No Category'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('No favorite recipes'),
                ),

          // Nutrition Info Section
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nutrition Info',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    'Carbohydrates: ${user.nutritionInfo?.carbohydrates ?? 'N/A'}'),
                Text('Fat: ${user.nutritionInfo?.fat ?? 'N/A'}'),
                Text('Protein: ${user.nutritionInfo?.protein ?? 'N/A'}'),
                Text('Sodium: ${user.nutritionInfo?.sodium ?? 'N/A'}'),
                Text('Sugar: ${user.nutritionInfo?.sugar ?? 'N/A'}'),
                Text('Fibre: ${user.nutritionInfo?.fibre ?? 'N/A'}'),
                // Add more fields as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
