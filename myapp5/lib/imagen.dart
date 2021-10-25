import 'package:flutter/material.dart';

class imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          'https://thumbs.dreamstime.com/z/bu%C3%B1uelo-lindo-del-kawai-rosa-con-el-desmoche-y-peque%C3%B1as-estrellas-objeto-separado-fondo-elemento-vector-para-su-embalaje-tarjeta-143012373.jpg'),
    );
  }
}
