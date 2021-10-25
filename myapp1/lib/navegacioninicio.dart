import 'package:flutter/material.dart';
import 'package:myapp1_0/inicio.dart';
import 'package:myapp1_0/contacto.dart';

import 'dart:ui';

import 'rutas.dart';
import 'inicio.dart';
import 'contacto.dart';
import 'perfil.dart';

class navegacioninicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'navegacion drawer', home: inicio(), routes: {
      rutas.rutainicio: (context) => inicio(),
      rutas.rutacontacto: (context) => contacto(),
      rutas.rutaperfil: (context) => perfil(),
    });
  }
}
