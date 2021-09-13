import 'package:flutter/material.dart';

void main() {
  runApp(const ColorEditApp());
}

class ColorEditApp extends StatelessWidget {
  const ColorEditApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => const ColorScreen(),
      '/edit': (context) => const EditColorScreen(),
    });
  }
}

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color _color = const Color.fromARGB(255, 255, 0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(
                '/edit',
                arguments: _color,
              )
                  .then((result) {
                if (result != null) {
                  setState(() {
                    _color = result as Color;
                  });
                }
              });
            },
            child: const Text('Press'),
          ),
        ),
      ),
    );
  }
}

class EditColorScreen extends StatefulWidget {
  const EditColorScreen({Key? key}) : super(key: key);

  @override
  _EditColorScreenState createState() => _EditColorScreenState();
}

class _EditColorScreenState extends State<EditColorScreen> {
  List<TextEditingController> _controllers = [];

  @override
  void didChangeDependencies() {
    final Color? color = ModalRoute.of(context)!.settings.arguments as Color?;
    final List<String> _colorComponents = [
      color!.red.toString(),
      color.green.toString(),
      color.blue.toString(),
    ];
    _controllers = [
      for (int i = 0; i < 3; i++)
        TextEditingController(text: _colorComponents[i]),
    ];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final List<String> _colors = ['Red', 'Green', 'Blue'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Color'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                for (int i = 0; i < 3; i++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _controllers[i],
                        decoration: InputDecoration(
                          labelText: _colors[i],
                        ),
                      ),
                    ),
                  )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                final int red = int.parse(_controllers[0].text);
                final int green = int.parse(_controllers[1].text);
                final int blue = int.parse(_controllers[2].text);
                Navigator.of(context)
                    .pop(Color.fromARGB(255, red, green, blue));
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
