import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'dart:io';

class Contactos extends StatefulWidget {
  @override
  _ContactosState createState() => _ContactosState();
}

class _ContactosState extends State<Contactos> {
  hacerLlamada() async {
    const url = 'tel:+527221545067';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'error al llamar la $url';
    }
  }

  enviarsms(String msj, List<String> d) async {
    String r = await sendSMS(message: msj, recipients: d).catchError((onError) {
      print(onError);
    });
    print(r);
  }

  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              width: 100.0,
              child: TextButton(
                  child: Text('llamada', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, onPrimary: Colors.white),
                  onPressed: hacerLlamada),
            ),
            Container(
                margin: EdgeInsets.all(25),
                width: 100.0,
                child: TextButton(
                  child: Text('SMS', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, onPrimary: Colors.white),
                  onPressed: () {
                    String msj = "demo";
                    List<String> d = ["7221545067"];
                    enviarsms(msj, d);
                  },
                )),
            Container(
                margin: EdgeInsets.all(25),
                width: 150.0,
                child: TextButton(
                  child: Text('Whatsapp', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, onPrimary: Colors.white),
                  onPressed: () {
                    String mensaje = "Esto es un mensaje";
                    String destinatario = "+527221545067";
                    openwhatsapp(mensaje, destinatario);
                  },
                ))
          ]),
        ),
      ),
    );
  }
}
