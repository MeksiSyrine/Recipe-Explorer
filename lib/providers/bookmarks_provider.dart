import 'package:hive_flutter/hive_flutter.dart';
import 'package:mealplanner/entities/complete_recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bookmarks_provider.g.dart';

@riverpod
class Bookmarks extends _$Bookmarks {
  Box<CompleteRecipe>?
      _box; // Make it nullable temporarily during initialization

  @override
  Future<List<CompleteRecipe>> build() async {
    // Initialize the box only once
    if (!Hive.isBoxOpen('favorites')) {
      _box = await Hive.openBox<CompleteRecipe>('favorites');
    } else {
      _box = Hive.box<CompleteRecipe>('favorites');
    }
    return _box!.values
        .toList(); // Use `!` since _box is guaranteed to be initialized here
  }

  void add(CompleteRecipe meal) {
    _box?.put(meal.id, meal); // Use null-aware operator to avoid errors
    ref.invalidateSelf(); // Notify listeners to rebuild
  }

  void remove(String id) {
    _box?.delete(id); // Use null-aware operator to avoid errors
    ref.invalidateSelf(); // Notify listeners to rebuild
  }

  bool isBookmarked(String id) {
    return _box?.containsKey(id) ?? false; // Use null-aware operator
  }
}
