import '../../setting/colors.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Btn {
  final BuildContext context;
  static String name2 = '';

  static const fontstyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white);
  static const fontBlack =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black);

  Btn({this.context});
  // final page;

  static Widget __btnBody(context, text, routes, arguments, color) {
    return MaterialButton(
      height: 28,
      minWidth: (0.5 / 40) * MediaQuery.of(context).size.width,
      textColor: Colors.white,
      color: color,
      onPressed: () {
        Navigator.pushNamed(context, routes, arguments: arguments);
      },
      child: new Text(
        text,
        style: fontstyle,
      ),
    );
  }

  static Widget custom(context, text, routes, arguments, color) {
    return __btnBody(context, text, routes, arguments, color);
  }

  static Widget info(context, text, routes, arguments) {
    return __btnBody(context, text, routes, arguments, color_info);
  }

  static Widget success(context, text, routes, arguments) {
    return __btnBody(context, text, routes, arguments, color_success);
  }

  static Widget primary(context, text, routes, arguments) {
    return __btnBody(context, text, routes, arguments, color_primary);
  }

  static Widget danger(context, text, routes, arguments) {
    return __btnBody(context, text, routes, arguments, color_danger);
  }

  static Widget warning(context, text, routes, arguments) {
    return __btnBody(context, text, routes, arguments, color_warning);
  }

  // static Widget hreflink(context, widget, url) {
  //   // String url = 'https://flutter.dev';
  //   // html.window.open(url, '_blank');

  //   return InkWell(
  //       child: new Text('Open Browser'),
  //       onTap: () => {
  //             if (kIsWeb) {html.window.open(url, '_blank')} else {launch(url)}
  //           });
  // }

  static Widget normal(context, text, routes, arguments) {
    // return __btnBody(context, text, routes, arguments, color_normal);
    return MaterialButton(
      height: 30,
      minWidth: (1 / 40) * MediaQuery.of(context).size.width,
      color: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, routes, arguments: arguments);
      },
      child: new Text(
        text,
        style: fontBlack,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xff999999)),
      ),
    );
  }

  // static Widget home(color, Function method) {
  //   return ButtonTheme(
  //     minWidth: 3,
  //     height: 50,
  //     buttonColor: color,
  //     child: RaisedButton(
  //       onPressed: method,
  //       child: Icon(
  //         Icons.home,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  // static Widget outline(text, borderColor, Function method) {
  //   return RaisedButton(
  //     onPressed: method,
  //     child: Text(
  //       text,
  //       style: TextStyle(
  //         fontSize: 14,
  //         fontWeight: FontWeight.bold,
  //         color: borderColor,
  //       ),
  //     ),
  //     color: Colors.white,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(18.0),
  //       side: BorderSide(color: borderColor),
  //     ),
  //   );
  // }

  // static Widget outlineColor(text, bodyColor, Function method) {
  //   return RaisedButton(
  //     onPressed: method,
  //     child: Text(
  //       text,
  //       style: TextStyle(
  //         fontSize: 14,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white,
  //       ),
  //     ),
  //     color: bodyColor,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(18.0),
  //         side: BorderSide(color: bodyColor[900])),
  //   );
  // }

}
