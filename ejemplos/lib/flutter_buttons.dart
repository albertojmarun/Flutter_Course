import 'package:flutter/material.dart';

void main() {
  runApp(const MuestrarioApp());
}

class MuestrarioApp extends StatelessWidget {
  const MuestrarioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Muestrario de Botones'),
        ),
        // The GridView.count is useful to make a table with defined columns
        body: GridView.count(
          childAspectRatio: 4 / 3, // Size of each Child.
          crossAxisCount: 2, // Number of columns.
          children: <Widget>[
            ButtonShow(
              text: 'Elevated Button',
              child: ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Has apretado');
                },
                child: const Text(
                  'Press Me!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const ButtonShow(
              text: 'Elevated Button Unabled',
              child: ElevatedButton(
                // If you put an empty function will enabled the button, but if you put null, is not enabled.
                onPressed: null,
                child: Text(
                  'Press Me!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ButtonShow(
              text: 'Text Button',
              // We use TextButton instead of FlatButton, because the last one is depreceated.
              child: TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('TextButton pressed');
                },
                child: const Text(
                  'Press Me!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const ButtonShow(
              text: 'Text Button Unabled',
              // We use TextButton instead of FlatButton, because the last one is depreceated.
              child: TextButton(
                onPressed: null,
                child: Text(
                  'Press Me!',
                ),
              ),
            ),
            const ButtonShow(
              text: 'Outlined Button',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton(
                onPressed: null, // () {},
                child: Text('Press Me!'),
              ),
            ),
            ButtonShow(
              text: 'Outlined Button Unabled with StadiumBorder',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                ),
                child: const Text('Press Me!'),
              ),
            ),
            ButtonShow(
              text:
                  'OutlinedButton with an Icon and other important properties.',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add Circle'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  // Highlight color -> OverlayColor
                  overlayColor: MaterialStateProperty.all(Colors.green[200]),
                ),
              ),
            ),
            const ButtonShow(
              text: 'IconButton',
              child: IconButton(
                icon: Icon(Icons.account_balance_sharp),
                onPressed: null, // () {},
                tooltip: 'IconButton Hint',
              ),
            ),
            const ButtonShow(
              text: 'Close Button',
              child: CloseButton(),
            ),
            const ButtonShow(
              text: 'Back Button',
              child: BackButton(),
            ),
            ButtonShow(
              text: 'Hello',
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.green[900],
                child: const Icon(Icons.add_task),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Button Show is a class with a StatelessWidget (This means that the widget doesn't change its state).
class ButtonShow extends StatelessWidget {
  final Widget child;
  final String text;

  /// Construct
  /// @param child: Widget to show (Preferible will be a Button).
  /// @param text: String to show under the button.
  const ButtonShow({
    Key? key,
    required this.child,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              child,
              const SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
