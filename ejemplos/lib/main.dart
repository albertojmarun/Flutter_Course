// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplos Flutter'),
        ),
        body: Center(
          child: Container(
            // width: 200,
            // height: 200,
            // You cannot combine a color and a decoration.
            // color: Colors.red,
            // decoration: FlutterLogoDecoration(),
            decoration: BoxDecoration(
              color: Colors.pink[50],
              border: Border.all(
                color: Colors.red,
                width: 6,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                  blurRadius: 5,
                ),
              ],
            ),
            margin: EdgeInsets.all(10),
            child: Text(
              'Hola Bebe' + ', Como andas?',
              style: TextStyle(fontSize: 30),
            ),
            padding: EdgeInsets.all(20),
            // padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 400,
              minWidth: 100,
              minHeight: 150,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
