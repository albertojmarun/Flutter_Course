import 'package:flutter/material.dart';

void main() {
  runApp(const SaludoApp());
}

class SaludoApp extends StatelessWidget {
  const SaludoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const Saludo(),
    );
  }
}

class Saludo extends StatelessWidget {
  const Saludo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hellos')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: const InputDecoration(
            filled: true,
            labelText: 'Name',
          ),
          onSubmitted: (String name) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Hello!'),
                content: Text('Hello $name, how are you?'),
              ),
            );
          },
        ),
      ),
    );
  }
}
