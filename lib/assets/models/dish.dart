class Dish {
  final String title;
  final String description;
  final String url;
  final int price;

  Dish(
      {required this.title,
      required this.description,
      required this.url,
      required this.price});

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
        title: json['title'],
        description: json['description'],
        url: json['url'],
        price: json['price']);
  }
}
