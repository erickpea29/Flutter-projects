import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class descripcion extends StatelessWidget {
  @override
  String Texto1 =
      "La concepción de la fotografía cambió en cuanto los teléfonos inteligentes le permitieron a los usuarios registrar momentos de forma inmediata, sin necesidad de un dispositivo extra y con un almacenamiento portátil. Con la evolución de estos dispositivos móviles también se han incorporado nuevas herramientas que permiten no solo tener imágenes en una resolución óptima, sino que los usuarios pueden acceder a modos de captura profesional, utilizando herramientas como la velocidad de obturación, el ISO, el diafragma y el balance de blancos, de nuevo, sin necesidad de un cuerpo de una cámara profesional y un lente.";
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Text(
        Texto1,
        textAlign: TextAlign.justify,
        style: GoogleFonts.anton(fontSize: 20.0, wordSpacing: 1.5),
      ),
    );
  }
}
