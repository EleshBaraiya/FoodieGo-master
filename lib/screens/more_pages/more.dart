import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 8.0, right: 8.0, bottom: 8.0),
                child: RaisedButton(
                  color: Colors.white,
                  colorBrightness: Brightness.dark,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.amber[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/myprofile');
                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Color(0xff1e6b68),
                        ),
                        Text(
                          "    Mijn Profiel",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff1e6b68),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color(0xff1e6b68),
                        ),
                      ]),
                ),
              ), //myprofile
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.white,
                  colorBrightness: Brightness.dark,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.amber[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/myorders');
                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.event_note,
                          color: Color(0xff1e6b68),
                        ),
                        Text(
                          "    Mijn Bestellingen",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff1e6b68),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color(0xff1e6b68),
                        ),
                      ]),
                ),
              ), //myorders
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.white,
                  colorBrightness: Brightness.dark,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.amber[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/mypayments');
                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.payment,
                          color: Color(0xff1e6b68),
                        ),
                        Text(
                          "    Mijn Betaalmethoden",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff1e6b68),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color(0xff1e6b68),
                        ),
                      ]),
                ),
              ), //mypayments
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.white,
                  colorBrightness: Brightness.dark,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.amber[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/helpcenter');
                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.help,
                          color: Color(0xff1e6b68),
                        ),
                        Text(
                          "    Helpcentrum",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff1e6b68),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color(0xff1e6b68),
                        ),
                      ]),
                ),
              ), //helpcenter
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.white,
                  colorBrightness: Brightness.dark,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.amber[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/becomechef');
                  },
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Color(0xff1e6b68),
                        ),
                        Text(
                          "    Word Healthy Chef",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff1e6b68),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color(0xff1e6b68),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 45.0, left: 45.0, right: 45.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Text(
                      'Houd jij van gezond koken en wil je graag extra inkomen genereren?',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                    Text(
                      'Meld je aan als chef!',
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
}
