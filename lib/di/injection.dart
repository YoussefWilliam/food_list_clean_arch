import 'package:food_list_clean_arch/feature/food_list/data/repository/food_list_repository_impl.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/repository/food_list_repository.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/usecases/get_food_list.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjection() async {
  // Register repository
  sl.registerLazySingleton<FoodListRepository>(() => FoodListRepositoryImpl());

  // Register usecases
  sl.registerLazySingleton(() => GetFoodList(sl<FoodListRepository>()));

  // Register bloc
  sl.registerFactory(() => FoodBloc(sl<GetFoodList>()));
}
