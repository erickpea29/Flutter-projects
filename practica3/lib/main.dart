import 'package:flutter/material.dart';
import 'Appi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Practica 3",
      home: Appi(),
    );
  }
}
