import 'package:flutter/material.dart';

//StatefulWidget pueden ser alterados y cambuiar muchas veces cuando mandas a llamar el metodo build algo
class SumaDosNumeros extends StatefulWidget {
  //La regla para las clases StatefulWidgets
  @override
  //Estado mutable, por eso se hace la subclase
  _SumaDosNumerosState createState() => _SumaDosNumerosState();
}

class _SumaDosNumerosState extends State<SumaDosNumeros> {
  TextEditingController num1Controller = new TextEditingController();
  TextEditingController num2Controller = new TextEditingController();
  TextEditingController num3Controller = new TextEditingController();
  TextEditingController num4Controller = new TextEditingController();
  String resultado = "0";
  String resultadoDec = "0";

  void suma() {
    //El setState nos permite alterar las variables
    setState(() {
      int sum = int.parse(num1Controller.text) + int.parse(num2Controller.text);
      resultado = sum.toString();
    });
  }

  void sumaDecimal() {
    //El setState nos permite alterar las variables
    setState(() {
      double sumDec =
          double.parse(num3Controller.text) + double.parse(num4Controller.text);
      resultadoDec = sumDec.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Text("Numero 1: "),
            new Flexible(
                child: new TextField(
              keyboardType: TextInputType.number,
              controller: num1Controller,
            ))
          ]),
          Row(children: <Widget>[
            Text("Numero 2: "),
            new Flexible(
                child: new TextField(
              keyboardType: TextInputType.number,
              controller: num2Controller,
            ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () => suma(), child: Text("Suma"))
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Resultado: "), Text(resultado)]),
        ],
      ),
    );
  }
}
