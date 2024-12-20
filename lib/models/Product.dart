class Product {
  String name, image, id;
  int count = 1;

  Product({required this.name, required this.image, required this.id});

  factory Product.fromJson(dynamic data) {
    return Product(name: data['name'], image: data['image'], id: data['id']);
  }
}
