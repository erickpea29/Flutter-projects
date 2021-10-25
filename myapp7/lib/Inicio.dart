import 'package:flutter/material.dart';
import 'Pantallados.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navegacion"), backgroundColor: Colors.green),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
            textStyle: TextStyle(color: Colors.blueAccent)),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Pantallados()));
        },
        child: Text("Ir a la pantalla 2"),
      )),
    );
  }
}
