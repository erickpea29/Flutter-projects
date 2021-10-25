import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class inicio extends StatelessWidget {
  static const String nombreruta = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      drawer: navigationDrawer(),
      body: Center(
        child: Text("Soy inicio"),
      ),
    );
  }
}
