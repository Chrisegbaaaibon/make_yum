import 'package:make_yum/src/models/meal.dart';
import 'package:make_yum/src/models/nutrition_info.dart';

class MealPlan {
  DateTime date;
  List<Meal>? meals;
  List<NutritionInfo>? nutriInfo;

  MealPlan({required this.date, this.meals, this.nutriInfo});
}
