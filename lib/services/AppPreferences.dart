import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static final String _city_name = "city_name";

  static Future<String> getCity() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(city_name) ?? '';
  }

  static Future<bool> setCity(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(city_name, value);
  }

  static String get city_name => _city_name;
}
