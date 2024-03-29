// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Row
class MyApp extends StatelessWidget {
  final TextStyle myStyle = const TextStyle(
    fontSize: 40,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                'uno',
                style: myStyle,
              ),
              Text(
                'dos',
                style: myStyle.copyWith(
                  color: Colors.purple,
                  fontSize: 35,
                ),
              ),
              Text(
                'tres',
                style: myStyle.copyWith(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
