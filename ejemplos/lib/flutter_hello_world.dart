// Imports go at the Beginning
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    ),
  );
}
