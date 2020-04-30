import 'package:flutter/material.dart';
import 'package:foodiegov2/api/common_api.dart';
import 'package:foodiegov2/model/city.dart';
import 'package:foodiegov2/notifier/common_notifier.dart';
import 'package:foodiegov2/services/AppPreferences.dart';
import 'package:provider/provider.dart';

import 'chef_detail.dart';
import 'food_detail.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  CommonNotifier commonNotifier;
  City selectedCity;
  String category = "";

  @override
  void initState() {
    CommonNotifier restaurantNotifier = Provider.of<CommonNotifier>(context, listen: false);
    getRestaurants(restaurantNotifier);
    super.initState();
  }

  onChangeDropdownItem(City selectedCompany) {
    setState(() async {
      this.selectedCity = selectedCompany;
      await AppPreferences.setCity(selectedCompany.city);
      getRestaurantsByCategory(commonNotifier, selectedCity.city, "");
    });
  }

  @override
  Widget build(BuildContext context) {
    commonNotifier = Provider.of<CommonNotifier>(context);
    setState(() {
      if (commonNotifier.cityList.length > 0) if (selectedCity == null)
        selectedCity = commonNotifier.cityList[0];
    });
//    print("-----Size--" +selectedCity.city);

    print("====MENU : " + commonNotifier.homeMenuList.length.toString());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                      child: new DropdownButton(
                    icon: Icon(
                      null,
                    ),
                    value: this.selectedCity,

//                    hint: Text("Select city",
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            color: Color(0xFF5B8842),
//                            fontSize: 20.0)),
                    onChanged: onChangeDropdownItem,
//                    onChanged: (newValue) {
//                      setState(() {
//                        this.selectedCity = newValue;
//                        getRestaurantsByCategory(
//                            commonNotifier, selectedCity.city, "");
//                      });
//                    },
                    items: commonNotifier.cityList.map((data) {
                      return DropdownMenuItem<City>(
                        value: data,
                        child: new Text(
                          data.city,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5B8842),
                              fontSize: 20.0),
                        ),
                      );
                    }).toList(),
                  )),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: commonNotifier.catList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            color: Colors.white,
                            margin: EdgeInsets.all(5),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.network(
                                      commonNotifier.catList[index].image,
                                      width: 80,
                                      height: 60,
                                    ),
                                    Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                        commonNotifier.catList[index].category
                                            .toString(),
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 17.0),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          category = commonNotifier.catList[index].category;
                          getRestaurantsByCategory(
                              commonNotifier, selectedCity.city, category);
                          print("=======Click=====");
                        },
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Chefs in Breda",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5B8842),
                          fontSize: 20.0)),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: commonNotifier.restaurantList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          child: Container(
                            height: 100,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          commonNotifier
                                              .restaurantList[index].image,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              commonNotifier
                                                  .restaurantList[index].name
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, bottom: 5),
                                              child: Text(
                                                commonNotifier
                                                    .restaurantList[index].info,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                            Text(
                                              commonNotifier
                                                  .restaurantList[index].city,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
//                            getMenuItems(commonNotifier, commonNotifier.restaurantList[index].id);
                            commonNotifier.currentRestaurant =
                                commonNotifier.restaurantList[index];
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return RestaurantDetail();
                            }));
                          });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Food in Breda",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5B8842),
                          fontSize: 20.0)),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: commonNotifier.homeMenuList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          child: Container(
                            height: 100,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          commonNotifier.homeMenuList[index].image,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              commonNotifier.homeMenuList[index].name
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, bottom: 5),
                                              child: Text(
                                                commonNotifier.homeMenuList[index].info,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                            Text(
                                              commonNotifier.homeMenuList[index].price,
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 12.0),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            commonNotifier.currentMenuItem = commonNotifier.homeMenuList[index];
                            Navigator.of(context).push((MaterialPageRoute(
                                builder: (context) => FoodDetailsPage(
                                    heroTag: commonNotifier.homeMenuList[index].image, foodName: commonNotifier.homeMenuList[index].name, foodPrice: commonNotifier.homeMenuList[index].price))));




                          });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//return SafeArea(
//      child: Scaffold(
//        body: Column(
//          children:<Widget> [
//            Container(
//                width: double.infinity,
//                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(30.0),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.grey,
//                      blurRadius: 2.0,
//                    ),
//                  ],
//                  color: Colors.white,
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Center(
//                      child: DropdownButtonHideUnderline(
//                    child: DropdownButton<City>(
//                      hint: Text("Select City"),
//                      value: currentSelectedValue,
//
//                      onChanged: (newValue) {
//                        setState(() async {
//                          this.currentSelectedValue = newValue;
//                        });
//                        print('--------' + currentSelectedValue.city);
//                      },
//                      items: restaurantNotifier.cityList.map((data) {
//                        return DropdownMenuItem<City>(
//                          value: data,
//                          child: Text(data.city),
//                        );
//                      }).toList(),
//                    ),
//                  )),
//                )),
//            Container(
//              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
//              height: MediaQuery.of(context).size.height / 2,
//              child: ListView.builder(
//                  scrollDirection: Axis.horizontal,
//                  itemCount: restaurantNotifier.catList.length,
//                  itemBuilder: (context, index) {
//                    return Container(
//                        child: Container(
//                          child: Center(
//                              child: _buildListItem('assets/plate2.jpg',restaurantNotifier.catList[index].category))
//                        ),
//                    );
//                  }),
//            ),
//            Expanded(
//              child: Container(
//                child: ListView.separated(
//                  itemBuilder: (BuildContext context, int index) {
//                    return Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: ListTile(
//                        leading: ClipRRect(
//                          borderRadius: BorderRadius.circular(8.0),
//                          child: Image.network(
//                            restaurantNotifier.restaurantList[index].image,
//                            width: 120,
//                            fit: BoxFit.cover,
//                          ),
//                        ),
//                        title:
//                            Text(restaurantNotifier.restaurantList[index].name),
//                        subtitle:
//                            Text(restaurantNotifier.restaurantList[index].info),
//                        onTap: () {
//                          restaurantNotifier.currentRestaurant =
//                              restaurantNotifier.restaurantList[index];
//                          Navigator.of(context).push(MaterialPageRoute(
//                              builder: (BuildContext context) {
//                            return RestaurantDetail();
//                          }));
//                        },
//                      ),
//                    );
//                  },
//                  itemCount: restaurantNotifier.restaurantList.length,
//                  separatorBuilder: (BuildContext context, int index) {
//                    return Divider(color: Color(0xff1e6b68));
//                  },
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );

Widget _buildListItem(String imgPath, String foodName) {
  return InkWell(
    onTap: () {
//      Navigator.of(context).push((MaterialPageRoute(
//          builder: (context) => FoodDetailsPage(
//              heroTag: imgPath, foodName: foodName, foodPrice: price))));
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
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 175.0,
                    child: Text(
                      foodName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
