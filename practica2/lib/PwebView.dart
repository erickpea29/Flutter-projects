import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Pwebview extends StatefulWidget {
  final String url;
  const Pwebview(this.url);
  @override
  _PwebviewState createState() => _PwebviewState();
}

class _PwebviewState extends State<Pwebview> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
    );
  }
}
