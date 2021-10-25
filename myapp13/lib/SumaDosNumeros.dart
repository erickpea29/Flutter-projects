import 'package:flutter/material.dart';
import 'obtienedatosapi.dart';
import 'regreso.dart';

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
  String resultado = "0";
  double factor = 0;
  String fecha = "";
  String conversion = "";

  Future<void> dato() async {
    obtienedatosapi dat = new obtienedatosapi();

    regreso r = await dat.getdatos('usd', 'mxn');
    factor = r.mxn;
    fecha = r.date;
    setState(() {
      resultado = factor.toString() + "\nfecha = " + fecha;
      double w = double.parse(num1Controller.text) / factor;
      w = double.parse(w.toStringAsFixed(2));
      conversion = w.toString();
    });
  }

  void suma() {
    //El setState nos permite alterar las variables
    setState(() {
      int sum = int.parse(num1Controller.text) + int.parse(num2Controller.text);
      resultado = sum.toString();
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
              ElevatedButton(onPressed: () => dato(), child: Text("Convierte"))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text("Resultado= " + conversion),
            Text("\nFactor= " + resultado)
          ]),
        ],
      ),
    );
  }
}
