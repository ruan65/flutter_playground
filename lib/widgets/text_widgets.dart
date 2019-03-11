import 'package:flutter/material.dart';

Widget dogBox(String name) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.green,
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(name),
    ),
  );
}

Widget tapableText(String text, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Text(text),
  );
}