import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodiegov2/notifier/common_notifier.dart';
import 'package:foodiegov2/screens/checkout.dart';
import 'package:provider/provider.dart';

class FoodDetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  FoodDetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

//  String foodName= foodName
//  String foodPrice;


  List<String> _locations = [
    'Klein',
    'Middel        + €2,00',
    'Groot         + €4,00'
  ]; // Option 2
  String _selectedLocation;
  // Option 2
  List<String> _proteine = [
    'Zalm',
    'Tonijn        + €2,00',
    'Kip           + €4,00'
  ]; // Option 2
  String _selectedProteine; // Option 2

  @override
  Widget build(BuildContext context) {

    CommonNotifier commonNotifier = Provider.of<CommonNotifier>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('FoodieGo'),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(height: 300.0),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/green.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(100.0))),
                ),
                Positioned(
                    top: 50.0,
                    left: (MediaQuery.of(context).size.width / 2) - 125,
                    child: Hero(
                        tag: widget.heroTag,
                        child: Container(
                          height: 250.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.heroTag),
                                  fit: BoxFit.cover)),
                        ))),
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(commonNotifier.currentMenu.name,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Text(
                        '4.9',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 17.0),
                      ),
                      SizedBox(width: 10.0),
                      Icon(Icons.star, color: Colors.green, size: 16.0),
                      Icon(Icons.star, color: Colors.green, size: 16.0),
                      Icon(Icons.star, color: Colors.green, size: 16.0),
                      Icon(Icons.star, color: Colors.green, size: 16.0),
                      Icon(Icons.star, color: Colors.green, size: 16.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo-vlabel.png'),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Gluten-icon.png'),
                                fit: BoxFit.scaleDown)),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/noten-icon.png'),
                                fit: BoxFit.scaleDown)),
                      ),
                      Expanded(child: SizedBox()),
                      Text(commonNotifier.currentMenu.price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[800],
                            fontSize: 35.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Text('Over deze vegan salade',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          color: Colors.black)),
                  SizedBox(height: 5.0),
                  Container(
                    child: Text(commonNotifier.currentMenu.info,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: Text(
                      'Ingrediënten',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    child: Text(commonNotifier.currentMenu.ingredients,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 10.0),
                  Text('Stel je maaltijd samen',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 15.0),
                  Text(
                    'Formaat',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                  DropdownButton(
                    hint: Text('Klein'),
                    isExpanded: true, // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Proteïne',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                  DropdownButton(
                    hint: Text('Zalm'),
                    isExpanded: true, // Not necessary for Option 1
                    value: _selectedProteine,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedProteine = newValue;
                      });
                    },
                    items: _proteine.map((proteine) {
                      return DropdownMenuItem(
                        child: Text(proteine),
                        value: proteine,
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 25.0),
                  Container(
//                      width: 175.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFEDFEE5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline,
                                color: Color(0xFF5CB238)),
                            onPressed: () {},
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Color(0xFF5CB238)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle,
                                color: Color(0xFF5AC035)),
                            onPressed: () {},
                          ),
                          Expanded(child: SizedBox()),
                          MaterialButton(
                            child: Text('Bestellen',
                                style: TextStyle(fontSize: 20.0)),
                            color: Colors.amber[800],
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              _settingModalBottomSheet(context);
//                              Navigator.of(context).push(MaterialPageRoute(
//                                  builder: (BuildContext context) =>
//                                      CartItemsScreen()));
                            },
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            color: Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                            title: Text(
                              'OVERZICHT BESTELLING',
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.bold),
                            ),
                            onTap: () => {}),
                      ),
                      SizedBox(height: 100.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text('1x Vegan Salade',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                            Expanded(
                              child: Text('€9,99',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline,
                                color: Color(0xFF5CB238)),
                            onPressed: () {},
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Color(0xFF5CB238)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle,
                                color: Color(0xFF5AC035)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text('Subtotaal',
                                      style: TextStyle(fontSize: 15.0),
                                      textAlign: TextAlign.start),
                                ),
                                Expanded(
                                  child: Text('€9,99',
                                      style: TextStyle(fontSize: 15.0),
                                      textAlign: TextAlign.start),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text('Bezorgkosten',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                            Expanded(
                              child: Text('€0,0',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text('Totaal',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                            Expanded(
                              child: Text('€9,99',
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.0),
                      MaterialButton(
                        child: Text('Afrekenen €9,99',
                            style: TextStyle(fontSize: 20.0)),
                        color: Colors.amber[800],
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          _settingModalBottomSheet(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CheckoutPage()));
                        },
                      ),
                      SizedBox(height: 50.0),
                    ],
                  ),
                ],
              ),
            ));
      });
}
