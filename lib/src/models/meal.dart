import 'package:make_yum/src/models/nutrition_info.dart';
import 'package:make_yum/src/models/recipe.dart';

class Meal {
  String? name;
  DateTime? time;
  List<Recipe>? recipes;
  List<NutritionInfo>? nutriInfo;
  List<String>? imageUrl;

  Meal({this.name, this.time, this.recipes, this.nutriInfo, this.imageUrl});
}
