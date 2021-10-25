import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: Center(child: Text('Chat', style: TextStyle(fontSize: 50))),
    );
  }
}
