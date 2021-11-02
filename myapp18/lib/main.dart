import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'services/local_notification_service.dart';
import 'green_page.dart';
import 'red_page.dart';

///Recibe el mensake cuando la app esta en background
Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget es la base del arbol
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "rojo": (_) => RedPage(),
        "verde": (_) => GreenPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    LocalNotificationService.initialize(context);

    ///nos da el mensaje donde el usuario da tap
    ///desde un estado terminado
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        final routeFromMessage = message.data["pantalla"];
        print('1 pantalla desde msj---' + routeFromMessage);
        Navigator.of(context).pushNamed(routeFromMessage);
      }
    });

    /// para que trabaje en background
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.body);
        print(message.notification!.title);
        final routeFromMessage = message.data["pantalla"];
        print('1 pantalla desde msj---' + routeFromMessage);
        Navigator.of(context).pushNamed(routeFromMessage);
      }

      LocalNotificationService.display(message);
    });

    ///Cuando el app esta en background pero se abre y el usuario da tap
    ///en la notificación

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeFromMessage = message.data["pantalla"];
      print('2 pantalla desde msj---' + routeFromMessage);
      Navigator.of(context).pushNamed(routeFromMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
            child: Text(
          "Recibiras un mensaje pronto vdelacruz",
          style: TextStyle(fontSize: 34),
        )),
      ),
    );
  }
}
