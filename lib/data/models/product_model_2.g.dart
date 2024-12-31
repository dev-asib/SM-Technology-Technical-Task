// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_2.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModel2Adapter extends TypeAdapter<ProductModel2> {
  @override
  final int typeId = 1;

  @override
  ProductModel2 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel2(
      id: fields[0] as int?,
      title: fields[1] as String?,
      price: fields[2] as double?,
      description: fields[3] as String?,
      category: fields[4] as String?,
      image: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel2 obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModel2Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
