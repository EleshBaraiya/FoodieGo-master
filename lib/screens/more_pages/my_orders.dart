import 'package:flutter/material.dart';

class MyOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('FoodieGo'),
        ),
        body: Container(
          padding: EdgeInsets.all(25.0),
          child: Text(
            'Mijn Bestellingen',
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
    );
  }
}
