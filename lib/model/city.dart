class City {
  String city;

  City.fromMap(Map<String, dynamic> data) {
    city = data['city'];
  }
}
