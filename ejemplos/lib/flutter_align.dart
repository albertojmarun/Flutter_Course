// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Align
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color: Colors.grey,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
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
