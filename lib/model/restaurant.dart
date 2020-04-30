import 'package:foodiegov2/model/address.dart';
import 'package:foodiegov2/model/menu.dart';

class Restaurant {
  String id;
  String name;
  String image;
  String info;
  Address address;
  String reviews;
  String city;
  Menu menu;

  Restaurant.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
    image = data['image'];
    info = data['info'];
    address = Address.fromMap(data['address']);
    reviews = data['reviews'];
    city = data['city'];
    menu = Menu.fromMap(data['menu']);
  }
}
