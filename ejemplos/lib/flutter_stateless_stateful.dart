import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Body(),
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SinEstado(),
            ConEstado(),
            ConEstado(),
          ],
        ),
      ),
    );
  }
}

// There is no change on the Widget, that is the meaning of StatelessWidget
class SinEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text('Without State!'),
      ),
    );
  }
}

// There will be changes on the Widget.
class ConEstado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<ConEstado> {
  bool _activo = false;

  // It works as a Constructor but it's not the same.
  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activo = !_activo;
        });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        color: (_activo ? Colors.blue : Colors.grey),
        child: Center(
          child: Text('Estado: $_activo!'),
        ),
      ),
    );
  }
}
