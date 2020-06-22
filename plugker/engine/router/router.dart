import '../../setting/path.dart';
import 'package:flutter/material.dart';

class Router {
  final String name;
  final MaterialPageRoute func;
  Router({
    this.name,
    this.func,
  });

  static path(name, func) {
    return {
      'name': name,
      'func': MaterialPageRoute(builder: (context) => func),
    };
  }
}

Route<dynamic> plugkerRoute(RouteSettings settings) {
  var nameRoute = settings.name;

  var result =
      routes(settings).where((routes) => routes["name"] == nameRoute).toList();
  if (result.isNotEmpty) {
    return result[0]["func"];
  }
}
