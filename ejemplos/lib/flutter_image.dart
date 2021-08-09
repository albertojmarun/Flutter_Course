// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

/// UPLOAD IMAGES
/// To Upload Images you can use:
///  Image.network (Taking an URL) or Image.asset(Taking an Image that you upload on your Project).
///
/// When you are going to work with files or something, it is important to create a folder name assets and there you will upload the files.
///
/// And in the pubspec.yaml you need to uncomment the assets and add your own assets.

// Flutter - Image
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 420,
            height: 520,
            color: Colors.yellow,
            child: Image.network(
              'https://i.pinimg.com/736x/7d/76/c3/7d76c313b8c7ea1f4bd21089898ff43c.jpg',
              fit: BoxFit.contain,
              alignment: Alignment.topLeft,
            ),
            /* This commentary is to have the Image.asset, but you can see how the Image.network(...) works.
            Image.asset(
              'assets/ajmi_avila_negro.jpg',
              fit: BoxFit.contain,
              scale: 1,
              alignment: Alignment.topCenter,
              repeat: ImageRepeat.noRepeat,
              // It Does Not Work...
              // width: 100,
              // height: 100,
            ),
            */
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
