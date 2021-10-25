import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://picsum.photos/250?image=9'))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("ejemplo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )))
        ],
      ));
}
