import 'package:make_yum/src/models/ingredient.dart';
import 'package:make_yum/src/models/nutrition_info.dart';

class Recipe {
  String title;
  List<Ingredient> ingredients;
  String instructions;
  String cookingTime;
  String? imageUrl;
  NutritionInfo? nutritionInfo;
  String? category;
  String? difficulty;
  double? rating;
  String? author;
  String? authorImageUrl;

  Recipe(
      {required this.title,
      required this.ingredients,
      required this.instructions,
      required this.cookingTime,
      this.imageUrl,
      this.nutritionInfo,
      this.category,
      this.difficulty,
      this.rating,
      this.author,
      this.authorImageUrl});
}
