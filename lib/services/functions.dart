import '../models/food.dart';
import '../data.dart';

List<Food> getAllFoods() {
  List<Food> ls = [];
  for (Map<String, String> mp in allFoods.values) {
    ls.add(Food(
      title: mp['title']!,
      time: mp['time']!,
      rating: mp['darajasi']!,
      energy: mp['kkal']!,
    ));
  }

  return ls;
}
