import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('Jouw Gegevens'),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Ik heb al een FoodieGo account',
                    style: TextStyle(color: Colors.black, fontSize: 15)),
                MaterialButton(
                  child: Text('Inloggen',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold)),
                  color: Colors.amber[800],
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text('Jouw gegevens',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//                    hintText: 'Bijv. Marijke',
                    labelText: 'Naam *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//                    hintText: 'Bijv. marijke@test.nl',
                    labelText: 'E-maildres *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//                    hintText: 'Bijv. +316123456789',
                    labelText: 'Telefoonnummer *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//                    hintText: 'Bijv. Marijke',
                    labelText: 'Bedrijfsnaam (optioneel)',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
          ]),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text('Adresgegevens',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//            hintText: 'Bijv. Marijke',
                    labelText: 'Straatnaam en huisnummer *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//            hintText: 'Bijv. Marijke',
                    labelText: 'Postcode *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
//            hintText: 'Bijv. Marijke',
                    labelText: 'Plaatsnaam *',
                  ),
                  onSaved: (String value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String arg) {
                    if (arg.length < 3)
                      return 'Minimaal 3 karakters';
                    else
                      return null;
                  },
                )),
          ]),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text('Hoe wil je betalen?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: new Text('Bestellen',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
            color: Colors.amber[800],
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ]),
      ),
    );
  }
}
