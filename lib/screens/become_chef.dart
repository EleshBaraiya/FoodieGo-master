import 'package:flutter/material.dart';

class BecomeChefPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('Meld je aan als Healthy Chef'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      'Verdien geld door gezonde maaltijden te koken!',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1e6b68)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 100.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            Icons.euro_symbol,
                            color: Colors.orange,
                            size: 24.0,
                            semanticLabel: 'Geld',
                          ),
                          Text(
                            '   Extra Inkomsten',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                        ]),
                  ), //USP1
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 15.0, right: 60.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.orange,
                            size: 24.0,
                            semanticLabel: 'gezonde samenleving',
                          ),
                          Text(
                            '   Een gezonde samenleving',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                        ]),
                  ), //USP2
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 15.0, right: 60.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            Icons.watch_later,
                            color: Colors.orange,
                            size: 24.0,
                            semanticLabel: 'werken wanneer je wil',
                          ),
                          Text(
                            '   Werken wanneer jij wil',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                        ]),
                  ), //USP3
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 45.0, right: 60.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Word Healthy Chef!',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xff1e6b68),
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ), //TITLE
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 5.0, left: 40.0, right: 40.0),
                    child: Container(
                        child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Naam Chef',
                        hintText: 'Bijv. Sandra\'s Kitchen',
                      ),
                    )),
                  ), //NameField
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 5.0, left: 40.0, right: 40.0),
                    child: Container(
                        child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        labelText: 'Telefoonnummer',
                        hintText: 'Bijv. +316123456789',
                      ),
                    )),
                  ), //TelField
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, bottom: 10.0, left: 40.0, right: 40.0),
                    child: Container(
                        child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'E-mailadres',
                        hintText: 'Bijv. sandra@gmail.com',
                      ),
                    )),
                  ), //EmailField
                  RaisedButton(
                    color: Color(0xff1e6b68),
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
//                        padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      print('geld verdienen!');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Ik ga geld verdienen!",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
