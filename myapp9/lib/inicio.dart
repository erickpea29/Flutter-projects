import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(child: Text('Inicio', style: TextStyle(fontSize: 50))),
    );
  }
}
