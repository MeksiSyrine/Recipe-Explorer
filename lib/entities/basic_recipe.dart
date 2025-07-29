import 'package:hive_flutter/hive_flutter.dart';

part 'basic_recipe.g.dart';

@HiveType(typeId: 1) // Assign a unique typeId
class BasicRecipe {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String imageUrl;

  const BasicRecipe({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory BasicRecipe.fromMap(Map<String, dynamic> map) {
    return BasicRecipe(
      id: map['idMeal'] as String,
      name: map['strMeal'] as String,
      imageUrl: map['strMealThumb'] as String,
    );
  }
}
