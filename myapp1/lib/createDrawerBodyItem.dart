import 'package:flutter/material.dart';

Widget createDrawerBodyItem(
    {IconData? icon, String? text, GestureTapCallback? myonTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(padding: EdgeInsets.only(left: 8), child: Text(text!))
      ],
    ),
    onTap: myonTap,
  );
}
