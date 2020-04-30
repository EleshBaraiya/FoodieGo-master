import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff1e6b68),
              title: Text('Mijn profiel'),
            ),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        'Mijn Profiel info',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Meer info',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ]),
                ]))));
  }
}
