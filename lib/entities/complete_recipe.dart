import 'package:hive_flutter/hive_flutter.dart';
import 'ingredient.dart';
import 'basic_recipe.dart';

part 'complete_recipe.g.dart';

@HiveType(typeId: 2) // Assign a unique typeId
class CompleteRecipe extends BasicRecipe {
  @HiveField(3)
  final String category;

  @HiveField(4)
  final String area;

  @HiveField(5)
  final String instructions;

  @HiveField(6)
  final List<Ingredient> ingredients;

  @HiveField(7)
  final String youtubeUrl;

  @HiveField(8)
  final List<String> tags;

  const CompleteRecipe({
    required super.id,
    required super.imageUrl,
    required super.name,
    required this.category,
    required this.area,
    required this.instructions,
    required this.ingredients,
    required this.youtubeUrl,
    required this.tags,
  });

  factory CompleteRecipe.fromMap(Map<String, dynamic> map) {
    List<Ingredient> ingredients = [];
    List<String> tags = [];

    // Extract ingredients
    for (int i = 1; i <= 20; i++) {
      String? ingredient = map['strIngredient$i'];
      String? measure = map['strMeasure$i'];
      if (ingredient != null &&
          ingredient.trim().isNotEmpty &&
          measure != null &&
          measure.trim().isNotEmpty) {
        ingredients.add(
          Ingredient(
            name: ingredient.trim(),
            measure: measure.trim(),
            imageUrl:
                'https://www.themealdb.com/images/ingredients/${ingredient.trim()}-Small.png',
          ),
        );
      }
    }

    String? tempTags = map['strTags'];

    if (tempTags != null) {
      tags = tempTags
          .split(',')
          .map<String>((String tag) => tag.trim())
          .where((String tag) => tag.isNotEmpty)
          .toList();
    }

    return CompleteRecipe(
      id: map['idMeal'],
      name: map['strMeal'],
      category: map['strCategory'],
      area: map['strArea'],
      instructions: map['strInstructions'],
      imageUrl: map['strMealThumb'],
      ingredients: ingredients,
      youtubeUrl: map['strYoutube'],
      tags: tags,
    );
  }
}
