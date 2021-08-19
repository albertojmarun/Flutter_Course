import 'package:flutter/material.dart';

void main() {
  runApp(const SelectionMain());
}

/// The MaterialApp and MainApplication to be executed.
class SelectionMain extends StatelessWidget {
  const SelectionMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bidirectional Counter',
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

/// Here is the Scaffold with the Top and Home of the Application.
class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ChooseSet(
          buttonsColors: Colors.green,
          options: const [
            'Caracas',
            'Mérida',
            'Choroni',
            'Tucupita',
            'Cordoba',
            'San Juan de Los Morros',
            'Higuerote',
            'Chirimena',
            'Los Teques',
          ],
        ),
      ),
    );
  }
}

/// ChooseSet represents the 
// ignore: must_be_immutable
class ChooseSet extends StatelessWidget {
  List<String> options = [];
  Color? buttonsColors;
  List<Button> buttons = [];

  ChooseSet({required this.options, this.buttonsColors, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_function_literals_in_foreach_calls
    options.forEach((element) {
      buttons.add(Button(
        buttonText: element,
        colorButton: (buttonsColors == null)
        ? Theme.of(context).primaryColor
        : buttonsColors,
      ));
    });

    return Wrap(
      spacing: 8,
      children: buttons,
    );
  }
}

// ignore: must_be_immutable
class Button extends StatefulWidget {
  String buttonText;
  Color? colorButton;

  Button({
    required this.buttonText,
    this.colorButton,
    Key? key,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _selected = false;
  IconData _icon = Icons.remove;
  MaterialStateProperty<Color?>? _backgroundColorButton;
  MaterialStateProperty<Color?>? _textColorButton;

  @override
  void initState() {
    super.initState();
    _selected = false;
    _icon = Icons.remove;
    _textColorButton = MaterialStateProperty.all(widget.colorButton);
    _backgroundColorButton = MaterialStateProperty.all(Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    void pressButton() {
      setState(() {
        _selected = !_selected;

        if (_selected) {
          _icon = Icons.check;
          _backgroundColorButton =
              MaterialStateProperty.all(widget.colorButton);
          _textColorButton = MaterialStateProperty.all(
            Colors.white,
          );
        } else {
          // selected == false
          _icon = Icons.remove;
          _backgroundColorButton = MaterialStateProperty.all(
            Colors.white,
          );
          _textColorButton = MaterialStateProperty.all(widget.colorButton);
        }
      });
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: pressButton,
        style: ButtonStyle(
          backgroundColor: _backgroundColorButton,
          shape: MaterialStateProperty.all(const StadiumBorder()),
          foregroundColor: _textColorButton,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_icon),
            Text(widget.buttonText),
          ],
        ),
      ),
    );
  }
}
