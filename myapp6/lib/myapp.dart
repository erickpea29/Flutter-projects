import 'package:flutter/material.dart';
import 'paginaprincipal.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaPrincipal(),
    );
  }
}
