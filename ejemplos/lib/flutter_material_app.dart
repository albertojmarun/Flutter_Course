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
        body: const Center(
          child: Text('Hello Flutter App in a Function'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
