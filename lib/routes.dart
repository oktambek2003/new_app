import 'package:flutter/material.dart';
import 'package:new_app/models/food.dart';

import 'screens/blankScreen.dart';
import 'screens/foodDetail.dart';
import 'screens/home.dart';

Route generateRoute(settings) {
  if (settings.name == HomeScreen.routeName) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
  if (settings.name == FoodDetailScreen.routeName) {
    return MaterialPageRoute(
        builder: (context) =>
            FoodDetailScreen(food: settings.arguments as Food));
  }
  return MaterialPageRoute(builder: (context) => BlankScreen());
}
