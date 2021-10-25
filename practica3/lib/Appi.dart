import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as HTTP;

class Appi extends StatefulWidget {
  @override
  _MyAppi createState() => _MyAppi();
}

class _MyAppi extends State<Appi> {
  TextEditingController num1Controller = new TextEditingController();
  String id = "";
  String urlimage = "https://rickandmortyapi.com/api/character/avatar/1.jpeg";

  Future<void> getapi(String id) async {
    String url = 'https://rickandmortyapi.com/api/character/' + id;
    final response = await HTTP.get(Uri.parse(url));
    Map datos = await json.decode(response.body);
    setState(() {
      urlimage = datos['image'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica 3"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              controller: num1Controller,
            ),
            ElevatedButton(
                onPressed: () => getapi(num1Controller.text),
                child: Text("Enviar")),
            Image.network(
              urlimage,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
