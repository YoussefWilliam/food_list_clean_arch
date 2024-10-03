import 'package:equatable/equatable.dart';

class FoodItemEntity extends Equatable {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const FoodItemEntity(
      {required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});

  @override
  List<Object?> get props => [name, description, price];
}
