// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

// ICONS ARE A WIDGET
/// USEFUL LINKS ARE:
/// https://github.com/google/material-design-icons
/// https://api.flutter.dev/flutter/material/Icons-class.html

// Flutter - Pills
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              MyPill('First'),
              MyPill('Second', color: Colors.blue),
              MyPill('Third', color: Colors.green),
              MyPill('Fourth', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPill extends StatelessWidget {
  final String texto;
  final Color color;

  const MyPill(
    this.texto, {
    this.color = Colors.red,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(5, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
