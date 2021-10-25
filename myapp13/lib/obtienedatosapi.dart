import 'dart:convert';
import 'regreso.dart';
import 'package:http/http.dart' as http;

class obtienedatosapi {
  Future<String> getapi(String origen, String destino) async {
    String myurl =
        'https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/' +
            origen +
            '/' +
            destino +
            '.json';
    final response = await http.get(Uri.parse(myurl));
    print(myurl);
    print(response.body);
    return response.body.toString();
  }

  Future<regreso> getdatos(String origen, String destino) async {
    String myregreso = '';
    myregreso = await getapi(origen, destino);
    Map<String, dynamic> data = jsonDecode(myregreso);
    regreso r = regreso(date: data['date'], mxn: data['mxn']);
    return r;
  }
}
