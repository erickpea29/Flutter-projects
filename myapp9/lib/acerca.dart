import 'package:flutter/material.dart';

class acerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acerca')),
      body: Center(child: Text('Acerca', style: TextStyle(fontSize: 50))),
    );
  }
}
