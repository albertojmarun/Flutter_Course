// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Align
/// It is useful on Columns and Rows
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.green,
                height: 300,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
