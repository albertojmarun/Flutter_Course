// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// Flutter - Column
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Color.fromARGB(255, 230, 240, 255),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Primera'),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Text(
                'Segunda',
                style: TextStyle(fontSize: 20),
                // textAlign: TextAlign.center,
              ),
              Container(
                height: 150,
                width: 120,
                color: Colors.blue,
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            /// CROSS AXIS ALIGNMENT PRECEDE TEXT ALIGN ON TEXT.
            crossAxisAlignment: CrossAxisAlignment.center,

            /// VERTICAL DIRECTION
            /// VerticalDirection.up -> starts at the end, and finish at the beginning.
            /// VerticalDirection.down -> default.
            verticalDirection: VerticalDirection.down,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
