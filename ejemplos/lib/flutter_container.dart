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
          child: Container(
            // width: 200,
            // height: 200,
            /// You cannot combine a Color and a Decoration, causes Collition.
            // color: Colors.red,
            // decoration: FlutterLogoDecoration(),
            decoration: BoxDecoration(
              color: Colors.pink[50],
              border: Border.all(
                color: Colors.red,
                width: 6,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                  blurRadius: 5,
                ),
              ],
            ),
            margin: EdgeInsets.all(10),
            child: Text(
              'Hola Bebe' + ', Como estas?',
              style: TextStyle(fontSize: 30),
            ),
            padding: EdgeInsets.all(20),
            constraints: BoxConstraints(
              maxHeight: 400,
              minHeight: 150,
              maxWidth: 300,
              minWidth: 100,
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
