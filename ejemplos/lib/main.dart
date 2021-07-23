// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplos Flutter')),
        body: Center(
          child: Text(
            'Hello Flutter App in a Function',
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(myApp());
}
