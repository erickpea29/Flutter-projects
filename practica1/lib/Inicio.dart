import 'package:flutter/material.dart';
import 'Numeros.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practica 1'),
        ),
        body: Numeros(),
      ),
    );
  }
}
