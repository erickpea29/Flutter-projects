import 'dart:convert';
import 'package:http/http.dart';

void main() async {
  /*Response r = await get(Uri.parse(
      'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m'));
  Map data = jsonDecode(r.body);
  print(data);*/

  Response r = await post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/'),
      body: {'title': 'mi prueba', 'body': 'cuerpo', 'userId': '00347504'});
  Map data = jsonDecode(r.body);
  print(data);
}
