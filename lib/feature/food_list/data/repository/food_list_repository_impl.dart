import 'dart:async';

import 'package:food_list_clean_arch/feature/food_list/data/model/food_item.dart';
import 'package:food_list_clean_arch/feature/food_list/domain/repository/food_list_repository.dart';

class FoodListRepositoryImpl extends FoodListRepository {
  @override
  Future<List<FoodItemModel>> getFoodList() async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const [
        FoodItemModel(
          name: 'Burger',
          description: 'Delicious burger',
          price: 5.0,
          imageUrl:
              'https://media.istockphoto.com/id/1309352410/photo/cheeseburger-with-tomato-and-lettuce-on-wooden-board.jpg?s=2048x2048&w=is&k=20&c=wydysVEp52o1ULrj9XWI_f8M2lZ06qm8xlBl6GmjTSQ=',
        ),
        FoodItemModel(
            name: 'Pizza',
            description: 'Cheesy pizza',
            price: 10.0,
            imageUrl:
                'https://media.istockphoto.com/id/1442417585/photo/person-getting-a-piece-of-cheesy-pepperoni-pizza.jpg?s=2048x2048&w=is&k=20&c=5qfqYi5DEhhVjJ-DIYB4MxUq31EmkvyEnNgNLm5LVpY='),
        FoodItemModel(
            name: 'Pasta',
            description: 'Creamy pasta',
            price: 8.0,
            imageUrl:
                'https://media.istockphoto.com/id/1189709277/photo/pasta-penne-with-roasted-tomato-sauce-mozzarella-cheese-grey-stone-background-top-view.jpg?s=2048x2048&w=is&k=20&c=-sKMI5AnnBXqC8sG-c3HbduAKD4viGYfbPeHFVBEf8I='),
      ],
    );
  }
}
