import 'package:foodiegov2/model/address.dart';
import 'package:foodiegov2/model/menu.dart';

class Home {
  String id;

  Home.fromMap(Map<String, dynamic> data) {
    id = data['id'];
  }
}
