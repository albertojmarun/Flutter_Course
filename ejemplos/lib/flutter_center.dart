// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Center
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          // widthFactor: 2.0,
          // heightFactor: 3.0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
