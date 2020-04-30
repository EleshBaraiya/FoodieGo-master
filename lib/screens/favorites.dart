import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text(
        'Voeg je favorieten toe!',
        style: TextStyle(fontSize: 36.0),
      ),
    );
  }
}
