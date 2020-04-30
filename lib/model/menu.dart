class Menu {
  String image;
  String info;
  String name;
  String ingredients;
  String price;

  Menu.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    info = data['info'];
    name = data['name'];
    ingredients = data['ingredients'];
    price = data['price'];
  }
}
