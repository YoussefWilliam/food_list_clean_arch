import 'package:bloc/bloc.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/usecases/get_food_list.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_event.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final GetFoodList _getFoodList;

  FoodBloc(this._getFoodList) : super(const FoodLoadingState()) {
    on<FoodEvent>((event, emit) async {
      // initially emit loading state
      emit(const FoodLoadingState());
      try {
        // get food list and change state to done
        final foodList = await _getFoodList();
        emit(FoodStateDone(foodList: foodList));
      } catch (e) {
        // change state to error if failed to load food list
        emit(FoodStateError(message: 'Failed to load food list'));
      }
    });
  }
}
