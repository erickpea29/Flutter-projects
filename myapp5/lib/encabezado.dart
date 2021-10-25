import 'package:flutter/material.dart';

class encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Fin de las imágenes pixeladas",
        style: TextStyle(
            fontFamily: 'Allison Regular',
            fontSize: 24.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
