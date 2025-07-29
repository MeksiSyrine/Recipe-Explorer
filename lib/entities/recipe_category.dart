import 'package:hive_flutter/hive_flutter.dart';

part 'recipe_category.g.dart';

@HiveType(typeId: 4) // Assign a unique typeId
class RecipeCategory {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String imageUrl;

  const RecipeCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory RecipeCategory.fromMap(Map<String, dynamic> map) {
    return RecipeCategory(
      id: map['idCategory'] as String,
      name: map['strCategory'] as String,
      imageUrl: map['strCategoryThumb'] as String,
    );
  }
}
