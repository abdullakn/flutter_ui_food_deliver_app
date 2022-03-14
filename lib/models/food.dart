class Food {
  String imgurl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlights;

  Food(
      {required this.imgurl,
      required this.desc,
      required this.name,
      required this.waitTime,
      required this.score,
      required this.cal,
      required this.price,
      required this.quantity,
      required this.ingredients,
      required this.about,
      this.highlights = false});

  static List<Food> recommendedFood() {
    return [
      Food(
          imgurl: "assets/images/dish1.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish"),
           Food(
          imgurl: "assets/images/dish1.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish"),
           Food(
          imgurl: "assets/images/dish2.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish")
    ];
  }


  static List<Food> popularFood() {
    return [
      Food(
          imgurl: "assets/images/dish1.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish"),
           Food(
          imgurl: "assets/images/dish1.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish"),
           Food(
          imgurl: "assets/images/dish2.png",
          desc: "No.1 food",
          name: "Alfham",
          waitTime: "15",
          score: 4.7,
          cal: '325 cal',
          price: 12,
          quantity: 1,
          ingredients: [{
            'noodles':"assets/images/ingre1.png",
            'shrimp':"assets/images/ingre2.png"
          }],
          about: "Simply and health dish")
    ];
  }
}
