// Imports go at the Beginning
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplos Flutter'),
        ),
        body: Center(
          child: Text('Hello Flutter App in a Function'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
