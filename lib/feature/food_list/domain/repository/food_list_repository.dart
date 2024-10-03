import 'package:food_list_clean_arch/feature/food_list/domain/entities/food_item.dart';

abstract class FoodListRepository {
  Future<List<FoodItemEntity>> getFoodList();
}
