import '../../setting/colors.dart';
import 'package:flutter/material.dart';

class PlugkerCard extends StatelessWidget {
  PlugkerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 97.5,
      child: Card(
        elevation: 5,
      ),
    );
  }

  static Widget normal(context, double col, title, body) {
    return __body(context, col, title, body, color_normal);
  }

  static Widget info(context, double col, title, body) {
    return __body(context, col, title, body, color_info);
  }

  static Widget danger(context, double col, title, body) {
    return __body(context, col, title, body, color_danger);
  }

  static Widget success(context, double col, title, body) {
    return __body(context, col, title, body, color_success);
  }

  static Widget warning(context, double col, title, body) {
    return __body(context, col, title, body, color_warning);
  }

  static Widget primary(context, double col, title, body) {
    return __body(context, col, title, body, color_primary);
  }

  static Widget image(context, double col, img, body) {
    return __img(context, col, img, body, color_primary);
  }

  static Widget simple(context, double col, color, body) {
    return __bodySimple(context, col, color, body);
  }

  static Widget __img(context, double col, img, body, color) {
    return FittedBox(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: __columnPercent(context, col),
              child: img,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
            ),
            Container(
              width: __columnPercent(context, col),
              // color: color,
              child: body,
            )
          ],
        ),
      ),
    );
  }

  static Widget __bodySimple(context, col, color, body) {
    return FittedBox(
      child: Card(
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: __columnPercent(context, col),
              child: body,
              decoration: BoxDecoration(color: color),
            )
          ],
        ),
      ),
    );
  }

  static Widget __body(context, double col, title, body, color) {
    return FittedBox(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: __columnPercent(context, col),
              child: title,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
            ),
            Container(
              width: __columnPercent(context, col),
              child: body,
            )
          ],
        ),
      ),
    );
  }

  static double __columnPercent(context, double col) {
    // print(MediaQuery.of(context).size.width);
    double value = (col / 12) * MediaQuery.of(context).size.width;
    String value2 = value.toStringAsFixed(2);
    double value3 = double.parse(value2);
    return value3;
  }

  static double __columnPercentHeight(context, double col) {
    // print(MediaQuery.of(context).size.width);
    double value = (col / 36) * MediaQuery.of(context).size.width;
    String value2 = value.toStringAsFixed(2);
    double value3 = double.parse(value2);
    return value3;
  }
}

// static Widget normal() {
//   return Scaffold(
//     body: Container(
//       padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//       height: 220,
//       width: double.maxFinite,
//       child: Card(

//       ),
//     ),
//   );
// }
