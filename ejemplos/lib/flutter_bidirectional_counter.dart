import 'package:flutter/material.dart';

void main() {
  runApp(const BidirectionalCounter());
}

class BidirectionalCounter extends StatelessWidget {
  const BidirectionalCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bidirectional Counter',
      home: const BidirectionalAppHome(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class BidirectionalAppHome extends StatefulWidget {
  const BidirectionalAppHome({Key? key}) : super(key: key);

  @override
  _BidirectionalAppHomeState createState() => _BidirectionalAppHomeState();
}

class _BidirectionalAppHomeState extends State<BidirectionalAppHome> {
  int _counter = 0;
  bool _substractDisabled = true;
  bool _addDisabled = false;

  @override
  void initState() {
    super.initState();
    _substractDisabled = true;
    _addDisabled = false;
  }

  void _increment() {
    setState(() {
      if (_counter < 20) {
        _counter++;
      }
      _addDisabled = _counter == 20;
      _substractDisabled = false;
    });
  }

  void _decrease() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }

      _substractDisabled = _counter == 0;
      _addDisabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size(100, 60)),
      shape: MaterialStateProperty.all(const StadiumBorder()),
    );

    final substractButton = OutlinedButton(
      onPressed: _substractDisabled ? null : _decrease,
      style: buttonStyle.copyWith(
        overlayColor: MaterialStateProperty.all(Colors.red[50]),
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      child: const Text(
        'Substract',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );

    final addButton = OutlinedButton(
      style: buttonStyle.copyWith(
        overlayColor: MaterialStateProperty.all(Colors.green[50]),
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
      onPressed: _addDisabled ? null : _increment,
      child: const Text(
        'Add',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bidirectional CounterApp'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisSize: MainAxisSize.max, // Default value.
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(height: 40),
              CounterDisplay(counter: _counter),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  substractButton,
                  addButton,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({
    Key? key,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }
}
