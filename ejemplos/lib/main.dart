// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Text
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: SizedBox(
          width: 350,
          height: 150,
          child: Text(
            'Un texto ' * 10,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            textScaleFactor: 1.2,
            maxLines: 3,
            overflow: TextOverflow.visible,
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 1.4,
              decorationStyle: TextDecorationStyle.wavy,
              backgroundColor: Colors.purple,
              shadows: [
                Shadow(
                  color: Colors.blue,
                  offset: Offset(4, 4),
                  blurRadius: 4,
                ),
              ],
              letterSpacing: 5,
              wordSpacing: 50,
              height: 1.5,
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
