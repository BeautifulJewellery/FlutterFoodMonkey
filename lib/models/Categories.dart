class Categories {
  String? name, image;

  Categories({this.name, this.image});

  factory Categories.fromJson(dynamic data) {
    return Categories(
      name: data["name"],
      image: data["image"],
    );
  }
}
