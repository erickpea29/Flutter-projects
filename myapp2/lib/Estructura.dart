import 'package:flutter/material.dart';
import 'ImagenA.dart';
import 'Imagenes.dart';

class Estructura extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Text("Caja 1")),
            Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Text("Caja 2")),
            Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Caja 3")),
            Imagenes(),
            ImagenA()
          ],
        ));
  }
}
