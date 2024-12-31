class ProductModel1 {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  ProductModel1({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  ProductModel1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = (json['price'] is int)
        ? (json['price'] as int).toDouble()
        : json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }
}
