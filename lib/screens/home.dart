import 'package:flutter/material.dart';
import 'package:new_app/models/food.dart';
import 'package:new_app/screens/foodDetail.dart';
import '../services/functions.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Food> allFoods = getAllFoods();

    return Scaffold(
      body: ListView.builder(
        itemCount: allFoods.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.pushNamed(context, FoodDetailScreen.routeName, arguments: allFoods[index]);
          },
          title: Text(allFoods[index].title),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/image1.jpeg'),
          ),
          subtitle: Row(
            children: [
              const Icon(Icons.access_time),
              Text(allFoods[index].time),
              const Icon(Icons.star),
              Text(allFoods[index].rating),
              const Icon(Icons.local_fire_department),
              Text(allFoods[index].energy),
            ],
          ),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
