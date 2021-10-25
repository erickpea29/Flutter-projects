import 'package:flutter/material.dart';
import 'package:navega_drawer/navigationDrawer.dart';

class inicio extends StatelessWidget {
  static const String nombreruta = '/inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('inicio'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("soy inicio"),
        ));
  }
}
