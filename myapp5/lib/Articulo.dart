import 'package:flutter/material.dart';
import 'imagen.dart';
import 'encabezado.dart';
import 'descripcion.dart';

class Articulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[imagen(), encabezado(), descripcion()],
      ),
    ));
  }
}
