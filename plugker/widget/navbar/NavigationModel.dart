import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class NavigationList {
  final Icon icon;
  final Widget text;
  final String path;
  NavigationList({
    this.icon,
    this.text,
    this.path,
  });
}

class NavigationHeader {
  final Widget header;
  NavigationHeader({
    this.header,
  });
}
