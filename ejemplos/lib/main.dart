// IMPORTS GO AT THE BEGINNING.
import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: Center(
      child: Text(
        'Hello Motherfucker',
        style: TextStyle(
          fontSize: 30
        ),
      ),
    ),
  ));
}
