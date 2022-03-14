import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  double rating;
  Map<String, List<Food>> menu;

  Restaurant(
      {required this.name,
      required this.waitTime,
      required this.distance,
      required this.label,
      required this.logoUrl,
      required this.desc,
      required this.rating,
      required this.menu});

  static Restaurant generateRestaurant() {
    return Restaurant(
        name: "Cabane",
        waitTime: "20-30 min",
        distance: "2.4 km",
        label: "Restaurant",
        logoUrl: "assets/images/res_logo.png",
        desc: "Fresh non veg restaurant",
        rating: 4.7,
        menu: {
          'Recommend': Food.recommendedFood(),
          'Popular': Food.popularFood(),
          'Noodels': [],
          'Pizza': []
        });
  }
}
