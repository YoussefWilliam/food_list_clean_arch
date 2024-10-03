import 'package:flutter/material.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/entities/food_item.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItemEntity foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _builderAppBar(), body: _builderBody());
  }

  _builderAppBar() {
    return AppBar(
      title: Text(
        foodItem.name,
        style: const TextStyle(color: Colors.orangeAccent, fontSize: 30),
      ),
    );
  }

  _builderBody() {
    return Column(
      children: [
        Image.network(
          foodItem.imageUrl,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodItem.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                foodItem.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                '\$${foodItem.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
