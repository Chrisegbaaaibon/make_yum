import 'package:make_yum/src/models/nutrition_info.dart';
import 'package:make_yum/src/models/recipe.dart';

class User {
  int id;
  String name;
  String email;
  String? imageUrl;
  String? dietaryPreference;
  List<Recipe>? favouriteRecipes;
  NutritionInfo? nutritionInfo;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.imageUrl,
    this.dietaryPreference,
    this.favouriteRecipes,
    this.nutritionInfo,
  });
}
