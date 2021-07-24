// Imports go at the Beginning

import 'package:flutter/material.dart';
/** IMPORT FLUTTER - material.dart
 * Every time is developed a Flutter Application
 * Is need to import this file, to have and use the widgets of FLutter SDK.
 */

/// MyApp is a Class That have the Widgets to Run Inside the Application.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: SizedBox(
          // WIDTH AND HEIGHT ARE EXPRESSED IN PIXELS.
          width: 350,
          height: 150,
          child: Text(
            'Un texto' * 10,
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
