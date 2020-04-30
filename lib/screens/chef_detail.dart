import 'package:flutter/material.dart';
import 'package:foodiegov2/api/common_api.dart';
import 'package:foodiegov2/model/menu.dart';
import 'package:foodiegov2/notifier/common_notifier.dart';
import 'package:foodiegov2/screens/food_detail.dart';
import 'package:provider/provider.dart';

class RestaurantDetail extends StatefulWidget {
  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {

  CommonNotifier restaurantNotifier;

  @override
  Widget build(BuildContext context) {
    restaurantNotifier = Provider.of<CommonNotifier>(context, listen: false);
    getMenuItems(restaurantNotifier, restaurantNotifier.currentRestaurant.id);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('FoodieGo'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 220.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          restaurantNotifier.currentRestaurant.image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight: Radius.circular(70.0))),
            ),
//            Image.network(restaurantNotifier.currentRestaurant.image,
//                fit: BoxFit.cover),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(restaurantNotifier.currentRestaurant.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5B8842),
                          fontSize: 40.0)),
                  SizedBox(height: 5.0),
                  Text(
                    restaurantNotifier.currentRestaurant.address.street,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      SizedBox(width: 10.0),
                      Text(
                        '12 Reviews',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.orange,
                            fontSize: 12.0),
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ExpansionTile(
                        leading: Icon(Icons.info),
                        title: Text('Over deze Chef'),
                        children: <Widget>[
                          ListTile(
                              title: Text(
                                  restaurantNotifier.currentRestaurant.info)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text('Populaire gerechten',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0))
                ],
              ),
            ),
            SizedBox(height: 7.0),
            Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: restaurantNotifier.menuList.length,
                  itemBuilder: (context, index) {

                    return _buildListItem(restaurantNotifier.menuList[index]);
                  }),
//              child: ListView(
//                scrollDirection: Axis.horizontal,
//                children: <Widget>[
//                  _buildListItem(restaurantNotifier.menuList[0].image, restaurantNotifier.currentRestaurant.menu.name, '\€10'),
//                  _buildListItem('assets/plate2.jpg', 'Protein Salade', '\€10')
//                ],
//              ),
            ),
            SizedBox(height: 20.0),
            Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Uitgelicht',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0))),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Color(0xFFACBEA3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage('assets/plate1.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Haal hier je healthy meal op',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0))),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                child: Center(
                  child: Text(
                    restaurantNotifier.currentRestaurant.address.street,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage('assets/maps.png'), fit: BoxFit.cover),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(Menu menuItem) {



    return InkWell(
      onTap: () {
        restaurantNotifier.currentMenuItem = menuItem;
        Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => FoodDetailsPage(
                heroTag: menuItem.image, foodName: menuItem.name, foodPrice: menuItem.price))));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5.0)
              ]),
          child: Stack(
            children: <Widget>[
              Container(
                  height: 175.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, Color(0xFFACBEA3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)))),
              Hero(
                  tag: menuItem.image,
                  child: Container(
                    height: 175.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(menuItem.image), fit: BoxFit.contain),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                  )),
              Positioned(
                  top: 160.0,
                  right: 20.0,
                  child: Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        child: Center(
                            child: Icon(Icons.favorite,
                                color: Colors.red, size: 17.0)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                      ))),
              Positioned(
                top: 190.0,
                left: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(menuItem.name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.0)),
                    SizedBox(height: 3.0),
                    Container(
                      width: 175.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '4.9',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                    fontSize: 12.0),
                              ),
                              SizedBox(width: 3.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                            ],
                          ),
                          Text(menuItem.price,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
