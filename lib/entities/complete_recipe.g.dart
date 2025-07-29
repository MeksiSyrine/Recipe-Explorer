// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_recipe.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompleteRecipeAdapter extends TypeAdapter<CompleteRecipe> {
  @override
  final int typeId = 2;

  @override
  CompleteRecipe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompleteRecipe(
      id: fields[0] as String,
      imageUrl: fields[2] as String,
      name: fields[1] as String,
      category: fields[3] as String,
      area: fields[4] as String,
      instructions: fields[5] as String,
      ingredients: (fields[6] as List).cast<Ingredient>(),
      youtubeUrl: fields[7] as String,
      tags: (fields[8] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompleteRecipe obj) {
    writer
      ..writeByte(9)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.area)
      ..writeByte(5)
      ..write(obj.instructions)
      ..writeByte(6)
      ..write(obj.ingredients)
      ..writeByte(7)
      ..write(obj.youtubeUrl)
      ..writeByte(8)
      ..write(obj.tags)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompleteRecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
