class ProductModel {
  final String name;
  final String price;

  final String description;

  ProductModel({
    required this.name,
    required this.price,
    required this.description,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      price: json['price'],
      description: json['description'],
    );
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'price': price, 'description': description};
  }
}
