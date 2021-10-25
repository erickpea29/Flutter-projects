import 'package:flutter/material.dart';
import 'Articulo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo scroll',
      home: Scaffold(
          appBar: AppBar(title: Text('Demo scroll')), body: Articulo()),
    );
  }
}

//flutter pub add google_fonts