import 'package:flutter/material.dart';

void main() => runApp(const PassParameters());

class PassParameters extends StatelessWidget {
  const PassParameters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const TextScreen(),
    );
  }
}

class TextScreen extends StatefulWidget {
  const TextScreen({
    Key? key,
  }) : super(key: key);

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  String _text = 'This text can be changed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Edit'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context) => EditScreen(_text),
                ))
                    .then((result) {
                  setState(() {
                    _text = (result != null) ? result.toString() : _text;
                  });
                });
              },
              child: const Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditScreen extends StatefulWidget {
  final String textEdit;

  const EditScreen(this.textEdit, {Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController(text: widget.textEdit);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit the Text'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(controller: _controller),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(_controller.text);
                  },
                  child: const Text('Save!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
