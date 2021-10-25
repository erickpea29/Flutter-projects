import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';

class camara extends StatefulWidget {
  @override
  _camaraState createState() => _camaraState();
}

class _camaraState extends State<camara> {
  @override
  XFile? imageFile;
  String urlimagen = "";
  Future<void> _showVentanaDialogo(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Escoge la opción",
              style: TextStyle(color: Colors.blueGrey),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    onTap: () {
                      _abrirgaleria(context);
                    },
                    title: Text("Galeria"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    onTap: () {
                      _abrircamara(context);
                    },
                    title: Text("Camara"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Camara"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Card(
                child: (imageFile == null)
                    ? Text("No hay imagen")
                    : Image.file(File(imageFile!.path)),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  _showVentanaDialogo(context);
                },
                child: Text("Selecciona imagen"),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  _subirImagen(context);
                },
                child: Text("\nSubir Imagen"),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  _abreLiga();
                },
                child: Text("\nAbre Liga"),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  _compartirLiga();
                },
                child: Text("\nCompartir Imagen"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _abrirgaleria(BuildContext context) async {
    final archivo = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = archivo;
    });
    Navigator.pop(context);
  }

  void _abrircamara(BuildContext context) async {
    final archivo = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = archivo;
    });
    Navigator.pop(context);
  }

  Future<void> _subirImagen(BuildContext context) async {
    String urllocal = "";
    final cloudinary = CloudinaryPublic('dfwspwcqc', 'wfs587hr', cache: false);

    try {
      CloudinaryResponse r = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(imageFile!.path,
              resourceType: CloudinaryResourceType.Image));
      print(r.secureUrl);
      urllocal = r.secureUrl;
    } on CloudinaryException catch (e) {
      print(e.message);
      print(e.request);
    }
    setState(() {
      urlimagen = urllocal;
    });
  }

  void _abreLiga() {
    launch(urlimagen);
  }

  void _compartirLiga() {
    Share.share('Mira a esta hermosa $urlimagen');
  }
}
