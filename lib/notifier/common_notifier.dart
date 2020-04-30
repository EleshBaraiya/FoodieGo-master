import 'dart:collection';
import 'package:foodiegov2/model/categories.dart';
import 'package:foodiegov2/model/city.dart';
import 'package:foodiegov2/model/menu.dart';
import 'package:foodiegov2/model/restaurant.dart';
import 'package:flutter/cupertino.dart';

class CommonNotifier with ChangeNotifier {
  List<Restaurant> _restaurantList = [];
  Restaurant _currentRestaurant;

  List<City> _cityList = [];
  City _currentCity;

  List<Category> _catList = [];
  Category _currentCat;

  List<Menu> _menuList = [];
  Menu _currentMenu;

  UnmodifiableListView<Restaurant> get restaurantList => UnmodifiableListView(_restaurantList);

  UnmodifiableListView<City> get cityList => UnmodifiableListView(_cityList);

  UnmodifiableListView<Category> get catList => UnmodifiableListView(_catList);

  UnmodifiableListView<Menu> get menuList => UnmodifiableListView(_menuList);

  UnmodifiableListView<Menu> get homeMenuList => UnmodifiableListView(_menuList);

  Restaurant get currentRestaurant => _currentRestaurant;

  set restaurantList(List<Restaurant> restaurantList) {
    _restaurantList = restaurantList;
    notifyListeners();
  }

  set currentRestaurant(Restaurant restaurant) {
    _currentRestaurant = restaurant;
    notifyListeners();
  }


  City get currentCity => _currentCity;

  Category get currentCat => _currentCat;

  Menu get currentMenu => _currentMenu;

  set cityList(List<City> cityList) {
    _cityList = cityList;
    notifyListeners();
  }

  set catList(List<Category> catList) {
    _catList = catList;
    notifyListeners();
  }

  set currentCity(City city) {
    _currentCity = city;
    notifyListeners();
  }

  set menuList(List<Menu> menuList) {
    _menuList = menuList;
    notifyListeners();
  }

  set currentMenuItem(Menu menuList) {
    _currentMenu = menuList;
    notifyListeners();
  }

  set homeMenuList(List<Menu> menuList) {
    _menuList = menuList;
    notifyListeners();
  }

}
