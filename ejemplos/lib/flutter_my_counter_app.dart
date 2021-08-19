import 'package:flutter/material.dart';
// Flutter - MyCounterApp

void main() {
  runApp(const CounterApp());
}

/// This class is about the CounterApp that Flutter generates when a new Project is created.
class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App (Mine)',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCounterApp'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'You Pressed the Button:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
