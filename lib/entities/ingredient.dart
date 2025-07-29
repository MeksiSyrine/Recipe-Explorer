import 'package:hive_flutter/hive_flutter.dart';

part 'ingredient.g.dart';

@HiveType(typeId: 3) // Assign a unique typeId
class Ingredient {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String measure;

  @HiveField(2)
  final String imageUrl;

  const Ingredient({
    required this.name,
    required this.measure,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'measure': measure,
      'imageUrl': imageUrl,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      name: map['name'] as String,
      measure: map['measure'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }
}
