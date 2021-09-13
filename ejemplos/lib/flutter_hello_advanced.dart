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

class Saludo extends StatefulWidget {
  const Saludo({Key? key}) : super(key: key);

  @override
  _SaludoState createState() => _SaludoState();
}

class _SaludoState extends State<Saludo> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Greetings')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Name',
                suffix: GestureDetector(
                  onTap: () {
                    _controller.clear();
                  },
                  child: const Icon(Icons.close, color: Colors.grey),
                ),
              ),
              onSubmitted: (String name) {
                _hello(context, name);
              },
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    _hello(context, _controller.text);
                  }
                },
                child: const Text('Saluda'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _hello(BuildContext context, String name) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hello!'),
        content: Text('Hello $name, how are you?'),
      ),
    );
  }
}
