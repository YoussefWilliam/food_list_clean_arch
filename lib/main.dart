import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_list_clean_arch/di/injection.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/bloc/food_bloc/food_bloc.dart';
import 'package:food_list_clean_arch/feature/food_list/presentation/pages/food_list.dart';

Future<void> main() async {
  // Set up injection
  await setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FoodBloc>(),
      child: MaterialApp(
        title: 'Food List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FoodList(),
      ),
    );
  }
}
