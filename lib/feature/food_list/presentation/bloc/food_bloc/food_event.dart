// Events that trigger state changes

abstract class FoodEvent {
  const FoodEvent();
}

// Empty event to trigger the initial state
class GetFoodListEvent extends FoodEvent {
  const GetFoodListEvent();
}
