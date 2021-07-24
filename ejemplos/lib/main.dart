// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Padding
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
