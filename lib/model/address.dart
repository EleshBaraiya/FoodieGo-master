class Address {
  String city;
  String postalcode;
  String street;

  Address.fromMap(Map<String, dynamic> data) {
    city = data['city'];
    postalcode = data['postalcode'];
    street = data['street'];
  }
}
