import 'package:food_list_clean_arch/feature/food_list/domain/entities/food_item.dart';

class FoodItemModel extends FoodItemEntity {
  const FoodItemModel(
      {required super.name,
      required super.description,
      required super.price,
      required super.imageUrl});

  factory FoodItemModel.fromJson(Map<String, dynamic> json) {
    return FoodItemModel(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }
}
