import 'package:flutter/material.dart';
import 'ImagenMona.dart';

class Andamio extends StatelessWidget {
  Widget build(BuildContext context) {
    var data =
        'El Retrato de Lisa Gherardini, esposa de Francesco del Giocondo';
    return Scaffold(
        appBar: AppBar(
          title: Text("Monalisa"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImagenMona(),
            Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Text(
                  data,
                  style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.brown,
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough),
                )),
          ],
        ));
  }
}
