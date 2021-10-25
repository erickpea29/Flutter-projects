import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  TextEditingController num1Controller = new TextEditingController();
  String resultado = "0";

  void USDMXN() {
    //El setState nos permite alterar las variables
    setState(() {
      double conversion = double.parse(num1Controller.text) * 19.89;
      resultado = conversion.toString() + " Pesos Mexicanos";
    });
  }

  void MXNUSD() {
    //El setState nos permite alterar las variables
    setState(() {
      double conversion = double.parse(num1Controller.text) / 19.89;
      resultado = conversion.toString() + " Dolares";
    });
  }

  void EURMXN() {
    //El setState nos permite alterar las variables
    setState(() {
      double conversion = double.parse(num1Controller.text) * 23.63;
      resultado = conversion.toString() + " Pesos Mexicanos";
    });
  }

  void MXNEUR() {
    //El setState nos permite alterar las variables
    setState(() {
      double conversion = double.parse(num1Controller.text) / 23.63;
      resultado = conversion.toString() + " Euros";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Text("Cantidad: "),
            new Flexible(
                child: new TextField(
              keyboardType: TextInputType.number,
              controller: num1Controller,
            ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => USDMXN(),
                  child: Text("USD a MXN"),
                  style: ElevatedButton.styleFrom(primary: Colors.green)),
              Padding(padding: EdgeInsets.symmetric(vertical: 20.0))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => MXNUSD(),
                  child: Text("MXN a USD"),
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue)),
              Padding(padding: EdgeInsets.symmetric(vertical: 20.0))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => EURMXN(),
                child: Text("EUR a MXN"),
                style: ElevatedButton.styleFrom(primary: Colors.pink),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => MXNEUR(),
                  child: Text("MXN a EUR"),
                  style: ElevatedButton.styleFrom(primary: Colors.yellow)),
              Padding(padding: EdgeInsets.symmetric(vertical: 20.0))
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(resultado)]),
        ],
      ),
    );
  }
}
