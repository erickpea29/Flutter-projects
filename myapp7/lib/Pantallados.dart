import 'package:flutter/material.dart';
import 'recibedatos.dart';

class Pantallados extends StatefulWidget {
  _PantalladosState createState() => _PantalladosState();
}

class _PantalladosState extends State<Pantallados> {
  String dato = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soy pantalla dos'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.all(32),
          child: Text(
            dato,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, textStyle: TextStyle(color: Colors.white)),
          onPressed: () {
            _esperavalor(context);
          },
          child: Text('Ir a inicio'),
        ),
      ])),
    );
  }

  void _esperavalor(BuildContext context) async {
    final res = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Recibedatos()));
    setState(() {
      dato = res;
    });
  }
}
