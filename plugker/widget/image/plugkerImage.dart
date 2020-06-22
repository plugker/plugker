import 'package:flutter/material.dart';

class PlugkerImage {
  final BuildContext cont;

  PlugkerImage({this.cont});

  static box() {}
  static circle() {
    return Container(
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"))));
  }

  static border() {}
  static rectangle() {}
}
