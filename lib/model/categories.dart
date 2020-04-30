class Category {
  String category;
  String image;

  Category.fromMap(Map<String, dynamic> data) {
    category = data['category'];
    image = data['image'];
  }
}
