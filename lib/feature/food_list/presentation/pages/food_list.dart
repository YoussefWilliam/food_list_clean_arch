import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_bloc.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_event.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_state.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/widgets/food_item_card.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger the event to get food list
    context.read<FoodBloc>().add(const GetFoodListEvent());

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Food List',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<FoodBloc, FoodState>(
      builder: (_, state) {
        if (state is FoodLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FoodStateDone) {
          return ListView.builder(
              itemBuilder: (context, index) {
                final foodItem = state.foodList[index];
                return FoodItemCard(foodItem: foodItem);
              },
              itemCount: state.foodList.length);
        }
        if (state is FoodStateError) {
          return Center(child: Text(state.message));
        }
        return Container(); // Default widget if no state matches
      },
    );
  }
}
