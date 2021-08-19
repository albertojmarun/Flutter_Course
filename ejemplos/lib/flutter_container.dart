import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplos Flutter'),
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
                // style: BorderStyle.solid, // DEFAULT VALUE
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: const [
                BoxShadow(
                  // color: Colors.black, // DEFAULT VALUE
                  offset: Offset(4, 4),
                  blurRadius: 5,
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints(
              maxHeight: 400,
              minHeight: 150,
              maxWidth: 300,
              minWidth: 100,
            ),
            child: const Text(
              'Hola Bebe' + ', Como estas?',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}