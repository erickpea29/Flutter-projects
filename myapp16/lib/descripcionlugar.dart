import 'package:flutter/material.dart';

Widget descripcionLugar(String s, BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 32),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "El estadio azteca",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text("4.5",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Casa de la selección mexicana",
                            style: TextStyle(color: Colors.white, fontSize: 14))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("estadio de futbol",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("$s")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("12345-98765")
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      )
    ],
  );
}
