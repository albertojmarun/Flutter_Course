// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// ICONS ARE A WIDGET
/// USEFUL LINKS ARE:
/// https://github.com/google/material-design-icons
/// https://api.flutter.dev/flutter/material/Icons-class.html

// Flutter - Icon
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Icon(
            Icons.battery_charging_full,
            size: 40,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
