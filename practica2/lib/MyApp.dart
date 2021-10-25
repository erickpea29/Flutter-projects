import 'package:flutter/material.dart';
import 'PwebView.dart';
import 'Nosotros.dart';
import 'Contactos.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.person)),
                    Tab(icon: Icon(Icons.web)),
                    Tab(icon: Icon(Icons.contact_page_rounded))
                  ],
                ),
                title: Text("Practica 2"),
                backgroundColor: Colors.green,
              ),
              body: TabBarView(
                children: [
                  Nosotros(),
                  Pwebview('https://octopus.com.ar/'),
                  Contactos(),
                ],
              ),
            )));
  }
}
