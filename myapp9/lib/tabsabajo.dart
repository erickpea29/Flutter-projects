import 'package:flutter/material.dart';
import 'inicio.dart';
import 'contacto.dart';
import 'acerca.dart';
import 'chat.dart';

class tabsabajo extends StatefulWidget {
  @override
  _tabsabajoState createState() => _tabsabajoState();
}

class _tabsabajoState extends State<tabsabajo> {
  int mi_indice = 0;
  final pantallas = <Widget>[inicio(), contacto(), acerca(), chat()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: IndexedStack(
        index: mi_indice,
        children: pantallas,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.black,
        iconSize: 40,
        currentIndex: mi_indice,
        onTap: (index) => setState(() => mi_indice = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: 'Contacto'),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), label: 'Acerca'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat')
        ],
      ),
    ));
  }
}
