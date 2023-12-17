import 'package:make_yum/src/models/nutrition_info.dart';

class Ingredient {
  String? name;
  String? imageUrl;
  String? quantity;
  String? unit;
  NutritionInfo? nutriInfo;

  Ingredient(
      {required this.name,
      this.imageUrl,
      this.quantity,
      this.unit,
      this.nutriInfo});
}
