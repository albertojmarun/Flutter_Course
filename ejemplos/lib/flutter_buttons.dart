import 'package:flutter/material.dart';

void main() {
  runApp(MuestrarioApp());
}

class MuestrarioApp extends StatelessWidget {
  const MuestrarioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Muestrario de Botones'),
        ),
        // The GridView.count is useful to make a table with defined columns
        body: GridView.count(
          childAspectRatio: 4 / 3, // Size of each Child.
          crossAxisCount: 2, // Number of columns.
          children: <Widget>[
            ButtonShow(
              child: ElevatedButton(
                child: Text(
                  'Press Me!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  print('Has apretado');
                },
              ),
              text: 'Elevated Button',
            ),
            ButtonShow(
              text: 'Elevated Button Unabled',
              child: ElevatedButton(
                child: Text(
                  'Press Me!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // If you put an empty function will enabled the button, but if you put null, is not enabled.
                onPressed: null,
              ),
            ),
            ButtonShow(
              text: 'Text Button',
              // We use TextButton instead of FlatButton, because the last one is depreceated.
              child: TextButton(
                child: Text(
                  'Press Me!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  print('TextButton pressed');
                },
              ),
            ),
            ButtonShow(
              text: 'Text Button Unabled',
              // We use TextButton instead of FlatButton, because the last one is depreceated.
              child: TextButton(
                child: Text(
                  'Press Me!',
                ),
                onPressed: null,
              ),
            ),
            ButtonShow(
              text: 'Outlined Button',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton(
                child: Text('Press Me!'),
                onPressed: () {
                  print('OutlinedButton pressed');
                },
              ),
            ),
            ButtonShow(
              text: 'Outlined Button Unabled with StadiumBorder',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton(
                child: Text('Press Me!'),
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  ),
                ),
              ),
            ),
            ButtonShow(
              text:'OutlinedButton with an Icon and other important properties.',
              // On the Tutorial, they use the OutlineButton but it is depreceated.
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Add Circle'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  // Highlight color -> OverlayColor
                  overlayColor: MaterialStateProperty.all(Colors.green[200]),
                ),
              ),
            ),
            ButtonShow(
              text: 'IconButton',
              child: IconButton(
                icon: Icon(Icons.account_balance_sharp),
                onPressed: () {},
                tooltip: 'IconButton Hint',
              ),
            ),
            ButtonShow(
              child: CloseButton(),
              text: 'Close Button',
            ),
            ButtonShow(
              child: BackButton(),
              text: 'Back Button',
            ),
            ButtonShow(
              text: 'Hello',
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.green[900],
                child: Icon(Icons.add_task),
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
              this.child,
              SizedBox(
                height: 10,
              ),
              Text(
                this.text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
