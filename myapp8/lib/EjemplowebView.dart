import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class Ejemplowebview extends StatefulWidget {
  final String url;
  const Ejemplowebview(this.url);
  @override
  _EjemplowebviewState createState() => _EjemplowebviewState();
}

class _EjemplowebviewState extends State<Ejemplowebview> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
    );
  }
}
