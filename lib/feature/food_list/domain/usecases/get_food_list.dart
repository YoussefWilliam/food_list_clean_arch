import 'package:food_list_clean_arch/core/usecases/usecase.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/entities/food_item.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/repository/food_list_repository.dart';

class GetFoodList implements Usecase<List<FoodItemEntity>, void> {
  final FoodListRepository repository;

  GetFoodList(this.repository);
  @override
  Future<List<FoodItemEntity>> call() async {
    return repository.getFoodList();
  }
}
