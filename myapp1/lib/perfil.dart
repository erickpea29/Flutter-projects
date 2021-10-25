import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class perfil extends StatelessWidget {
  static const String nombreruta = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      drawer: navigationDrawer(),
      body: Center(
        child: Text("Soy perfil"),
      ),
    );
  }
}
