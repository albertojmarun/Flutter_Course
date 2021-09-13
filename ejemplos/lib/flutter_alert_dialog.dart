import 'package:flutter/material.dart';

void main() => runApp(const DialogApp());

class DialogApp extends StatelessWidget {
  const DialogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example Dialogs'),
        ),
        body: const ShowDialogButton(),
      ),
    );
  }
}

class ShowDialogButton extends StatelessWidget {
  const ShowDialogButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('AlertDialog Title'),
              content: const Text('AlertDialog description'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop('Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop('Ok'),
                  child: const Text('OK'),
                ),
              ],
            ),
            // ignore: avoid_print
          ).then((result) => print("Result is: $result"));
        },
        child: const Text('Show Dialog'),
      ),
    );
  }
}
