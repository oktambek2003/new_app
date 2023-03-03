import 'package:flutter/material.dart';
import 'package:new_app/models/food.dart';

class FoodDetailScreen extends StatelessWidget {
  static String routeName = '/foodDetail';
  final Food food;
  const FoodDetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(food.title),
          Text(food.time),
          Text(food.rating),
          Text(food.energy),
        ],
      ),
    );
  }
}
