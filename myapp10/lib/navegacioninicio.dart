import 'dart:ui';

import 'package:flutter/material.dart';

import 'rutas.dart';
import 'inicio.dart';
import 'contacto.dart';
import 'perfil.dart';

class navegacioninicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navegación drawer',
      home: inicio(),
      routes: {
        rutas.rutainicio: (context) => inicio(),
        rutas.rutacontacto: (context) => contacto(),
        rutas.rutaperfil: (context) => perfil(),
      },
    );
  }
}
