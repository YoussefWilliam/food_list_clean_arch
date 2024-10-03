// States managed by the BLoC

import 'package:food_list_clean_arch/feature/food_list/domain/entities/food_item.dart';

// abstract class to represent the state of the BLoC
abstract class FoodState {
  final List<FoodItemEntity> foodList;

  // initial state for food list
  const FoodState({this.foodList = const []});
}

// Loading state
class FoodLoadingState extends FoodState {
  const FoodLoadingState();
}

// Request Done state
class FoodStateDone extends FoodState {
  FoodStateDone({required super.foodList});
}

// Error state
class FoodStateError extends FoodState {
  final String message;
  FoodStateError({required this.message});
}
