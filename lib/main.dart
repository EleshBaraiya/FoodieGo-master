import 'package:flutter/material.dart';
import 'package:foodiegov2/notifier/common_notifier.dart';
import 'package:foodiegov2/screens/login_screen.dart';
import 'package:foodiegov2/screens/signup_screen.dart';
import 'package:provider/provider.dart';
import 'package:foodiegov2/screens/feed.dart';
import 'package:foodiegov2/screens/become_chef.dart';
import 'package:foodiegov2/screens/search.dart';
import 'package:foodiegov2/screens/food_detail.dart';
import 'package:foodiegov2/screens/more_pages/more.dart';
import 'package:foodiegov2/screens/more_pages/helpcenter.dart';
import 'package:foodiegov2/screens/more_pages/my_orders.dart';
import 'package:foodiegov2/screens/more_pages/my_payments.dart';
import 'package:foodiegov2/screens/more_pages/my_profile.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonNotifier(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    // footermenu pages
    Feed(),
    SearchPage(),
//    FavoritesPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/helpcenter': (context) => HelpcenterPage(), //routes
        '/myorders': (context) => MyOrdersPage(), //routes
        '/mypayments': (context) => MyPaymentsPage(), //routes
        '/myprofile': (context) => MyProfilePage(),
        '/becomechef': (context) => BecomeChefPage(),
        '/food_detail': (context) => FoodDetailsPage(), //routes
        '/login': (context) => LoginScreen(), //routes
        '/signup': (context) => SignupPage(), //routes

//        '/RestaurantDetail': (context) => RestaurantDetail(),
      },
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1e6b68),
            title: Text('FoodieGo'),
          ),
//            actions: <Widget>[
//              Padding(
//                padding: const EdgeInsets.all(10.0),
//                child: Container(
//                    height: 150.0,
//                    width: 30.0,
//                    child: InkWell(
//                      onTap: () {
//                        Navigator.of(context).push(MaterialPageRoute(
//                            builder: (BuildContext context) =>
//                                CartItemsScreen()));
//                      },
//                      child: Stack(
//                        children: <Widget>[
//                          IconButton(
//                            icon: Icon(
//                              Icons.shopping_cart,
//                              color: Colors.white,
//                            ),
//                            onPressed: null,
//                          ),
////                    list.length == 0
////                        ? Container():
//                          Positioned(
//                              child: Stack(
//                            children: <Widget>[
//                              Icon(Icons.brightness_1,
//                                  size: 20.0, color: Colors.amber[800]),
//                              Positioned(
//                                  top: 3.0,
//                                  right: 6.0,
//                                  child: Center(
//                                    child: Text(
//                                      '4',
////                                      list.length.toString(),
//                                      style: TextStyle(
//                                          color: Colors.white,
//                                          fontSize: 11.0,
//                                          fontWeight: FontWeight.bold),
//                                    ),
//                                  )),
//                            ],
//                          )),
//                        ],
//                      ),
//                    )),
//              )
//            ],
//          ),
          body: _pageOptions[_selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            selectedItemColor: Colors.amber[800],
            onTap: (int index) {
              setState(() {
                _selectedTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Ontdekken'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Zoeken'),
              ),
//              BottomNavigationBarItem(
//                icon: Icon(Icons.favorite),
//                title: Text('Favorieten'),
//              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text('Meer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
