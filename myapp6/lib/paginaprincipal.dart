import 'package:flutter/material.dart';
import 'dart:math';
import 'acciones.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  _paginaprincipalState createState() => _paginaprincipalState();
}

class _paginaprincipalState extends State<PaginaPrincipal> with acciones {
  String carita = '🥵';
  int grados = 39;
  Color colorfondo = Colors.red;

  int nextNumber({required int min, required int max}) {
    return min + Random().nextInt(max - min + 1);
  }

  void cambiaclima() {
    int n = Random().nextInt(6);
    setState(() {
      switch (n) {
        case 0:
          carita = '🥶';
          grados = nextNumber(min: -20, max: 0);
          colorfondo = Colors.blueAccent.shade700;
          break;
        case 1:
          carita = '🥵';
          grados = nextNumber(min: 30, max: 45);
          colorfondo = Colors.red.shade400;
          break;
        case 2:
          carita = '⛅';
          grados = nextNumber(min: 5, max: 20);
          colorfondo = Colors.deepPurpleAccent.shade400;
          break;
        case 3:
          carita = '🌧';
          grados = nextNumber(min: 5, max: 20);
          colorfondo = Colors.purple;
          break;
        case 4:
          carita = '☃';
          grados = nextNumber(min: -5, max: 3);
          colorfondo = Colors.blueAccent;
          break;
        case 5:
          carita = '🌤';
          grados = nextNumber(min: 20, max: 30);
          colorfondo = Colors.orangeAccent.shade50;
          break;
        default:
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorfondo,
      appBar: AppBar(title: Text('App del clima'), centerTitle: true),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(carita, style: TextStyle(fontSize: 100)),
            //Caja vacia
            const SizedBox(height: 24),
            Text('$grados°', style: TextStyle(fontSize: 80)),
            Spacer(),
            TextButton(
                onPressed: cambiaclima,
                child: Text('♻ - Cambia el clima',
                    style: TextStyle(fontSize: 24, color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
