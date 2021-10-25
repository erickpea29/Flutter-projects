import 'package:flutter/material.dart';

class encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Octopus",
        style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://digitalagerevival.com/wp-content/uploads/2019/10/5a778b6c8a247d0432f14f37a55cd68b-1.png"),
    );
  }
}

class descripcion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        child: Text(
          "Un equipo de apasionados por la innovación, que busca llevarla al mundo de los consorcios, convencidos de que, a través de la tecnología, podemos darle el tiempo y el soporte que necesitás para potenciar tu administración",
          textAlign: TextAlign.justify,
        ));
  }
}

class Nosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[encabezado(), imagen(), descripcion()],
      ),
    ));
  }
}
