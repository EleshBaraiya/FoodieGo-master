import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodiegov2/model/categories.dart';
import 'package:foodiegov2/model/city.dart';
import 'package:foodiegov2/model/home.dart';
import 'package:foodiegov2/model/menu.dart';
import 'package:foodiegov2/model/restaurant.dart';
import 'package:foodiegov2/notifier/common_notifier.dart';

getRestaurants(CommonNotifier restaurantNotifier) async {
  QuerySnapshot snapshot =
      await Firestore.instance.collection('restaurants').getDocuments();


//  QuerySnapshot snapshots = await Firestore.instance.collection('menu').getDocuments();
//
//  snapshots.documents.forEach((document) {
//    print("===RKEY=="+document.data.toString());
//  });

  List<Restaurant> _restaurantList = [];

  snapshot.documents.forEach((document) {
    Restaurant restaurant = Restaurant.fromMap(document.data);
    _restaurantList.add(restaurant);
  });
  restaurantNotifier.restaurantList = _restaurantList;

  QuerySnapshot snapshotCity =
      await Firestore.instance.collection('cities').getDocuments();

  List<City> _cityList = [];

  snapshotCity.documents.forEach((document) {
    City city = City.fromMap(document.data);
    _cityList.add(city);
  });
  restaurantNotifier.cityList = _cityList;

  QuerySnapshot snapshotCat =
      await Firestore.instance.collection('categories').getDocuments();

  List<Category> _catList = [];

  snapshotCat.documents.forEach((document) {
    Category category = Category.fromMap(document.data);
    _catList.add(category);
  });
  restaurantNotifier.catList = _catList;


  QuerySnapshot snapshotMenu = await Firestore.instance.collection('menu').getDocuments();
  List<Home> _menuList = [];
  snapshotMenu.documents.forEach((document) {
    print("===ID");
    Home menu = Home.fromMap(document.data);
    print("===ID"+menu.id);
    getMenuItems(restaurantNotifier,menu.id);
    _menuList.add(menu);
  });


//  restaurantNotifier.homeMenuList = _menuList;
}

//getRestaurantsByCity1(CommonNotifier restaurantNotifier, String city) async {
//  QuerySnapshot snapshot = await Firestore.instance.collection('restaurants').where("city", isEqualTo: city)
//      .getDocuments();
//
//  List<Restaurant> _restaurantList = [];
//
//  snapshot.documents.forEach((document) {
//    Restaurant restaurant = Restaurant.fromMap(document.data);
//    _restaurantList.add(restaurant);
//  });
//  restaurantNotifier.restaurantList = _restaurantList;
//}

getRestaurantsByCategory(
    CommonNotifier restaurantNotifier, String city, String category) async {
  QuerySnapshot snapshot;

  if (city.isEmpty && category.isEmpty) {
    snapshot =
        await Firestore.instance.collection('restaurants').getDocuments();
  } else if (city.isNotEmpty && category.isEmpty) {
    snapshot = await Firestore.instance
        .collection('restaurants')
        .where("city", isEqualTo: city)
        .getDocuments();
  } else if (city.isNotEmpty && category.isNotEmpty) {
    snapshot = await Firestore.instance
        .collection('restaurants')
        .where("city", isEqualTo: city)
        .where("categoryName", isEqualTo: category)
        .getDocuments();
  } else if (city.isEmpty && category.isNotEmpty) {
    snapshot = await Firestore.instance
        .collection('restaurants')
        .where("categoryName", isEqualTo: category)
        .getDocuments();
  }

  List<Restaurant> _restaurantList = [];
  snapshot.documents.forEach((document) {
    Restaurant restaurant = Restaurant.fromMap(document.data);
    _restaurantList.add(restaurant);
  });
  restaurantNotifier.restaurantList = _restaurantList;
}

getMenuItems(CommonNotifier restaurantNotifier, String restaurantKey) async {

  QuerySnapshot snapshot = await Firestore.instance
      .collection('restaurants')
      .document(restaurantKey)
      .collection("menu")
      .getDocuments();

  List<Menu> _menuList = [];

  snapshot.documents.forEach((document) {
    Menu restaurant = Menu.fromMap(document.data);
    _menuList.add(restaurant);
  });
  restaurantNotifier.menuList = _menuList;
}

