import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './page/qr_create_page.dart';
import 'page/qr_scan_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Lector/Generador código QR';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.dark(),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final children = [
    QRScanPage(),
    QRCreatePage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: children[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Escanea Código Qr',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Crea Código Qr',
            ),
          ],
          onTap: (index) => setState(() => this.index = index),
        ),
      );
}
