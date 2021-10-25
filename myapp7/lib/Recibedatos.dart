import 'package:flutter/material.dart';
import '';

class Recibedatos extends StatefulWidget {
  @override
  _RecibedatosState createState() => _RecibedatosState();
}

class _RecibedatosState extends State<Recibedatos> {
  TextEditingController c1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Pantalla Dos"), backgroundColor: Colors.green),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              controller: c1,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                textStyle: TextStyle(color: Colors.blueAccent)),
            onPressed: () {
              _enviadatos(context);
            },
            child: Text("Ir a la pantalla de inicio"),
          )
        ],
      )),
    );
  }

  void _enviadatos(BuildContext context) {
    String t = c1.text;
    Navigator.pop(context, t);
  }
}
