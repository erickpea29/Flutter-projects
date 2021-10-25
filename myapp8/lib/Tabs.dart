import 'package:flutter/material.dart';
import 'EjemplowebView.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.music_note)),
                    Tab(icon: Icon(Icons.earbuds)),
                    Tab(icon: Icon(Icons.email_rounded)),
                    Tab(icon: Icon(Icons.pages_sharp)),
                    Tab(icon: Icon(Icons.celebration)),
                  ],
                ),
                title: Text("Demo tabs"),
                backgroundColor: Colors.blue,
              ),
              body: TabBarView(
                children: [
                  Icon(Icons.music_note),
                  Ejemplowebview('https://www.google.com'),
                  Ejemplowebview('https://www.facebook.com'),
                  Ejemplowebview('https://www.youtube.com'),
                  Icon(Icons.celebration),
                ],
              ),
            )));
  }
}
