import 'package:flutter/material.dart';

class MyPaymentsPage extends StatelessWidget {
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
            'Mijn Betaalmethoden',
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
    );
  }
}
