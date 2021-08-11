class Product {
  final String name, imagesUrl, description;
  final int price;

  // Maybe use @required
  Product({
    required this.name,
    required this.imagesUrl,
    required this.description,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      imagesUrl: json['images'][0]['url'],
      description: json['description'],
      price: json['price'],
    );
  }
}
