import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Text(
          'Zoek op stad!',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
    );
  }
}
