import 'package:flutter/material.dart';

class PlugkerGrid {
  static col_1(context, widget1) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 12,
              child: widget1,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: widget1,
            )
          ],
        ),
      );
    }
  }

  static col_2(context, widget1, widget2) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: widget1,
            ),
            Expanded(
              flex: 6,
              child: widget2,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: widget1,
            ),
            Expanded(
              flex: 6,
              child: widget2,
            ),
          ],
        ),
      );
    }
  }

  static col_3(context, widget1, widget2, widget3) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: widget1,
            ),
            Expanded(
              flex: 4,
              child: widget2,
            ),
            Expanded(
              flex: 4,
              child: widget3,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: widget1,
            ),
            Expanded(
              flex: 4,
              child: widget2,
            ),
            Expanded(
              flex: 4,
              child: widget3,
            ),
          ],
        ),
      );
    }
  }

  static col_4(context, widget1, widget2, widget3, widget4) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: widget1,
            ),
            Expanded(
              flex: 3,
              child: widget2,
            ),
            Expanded(
              flex: 3,
              child: widget3,
            ),
            Expanded(
              flex: 3,
              child: widget4,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: widget1,
            ),
            Expanded(
              flex: 3,
              child: widget2,
            ),
            Expanded(
              flex: 3,
              child: widget3,
            ),
            Expanded(
              flex: 3,
              child: widget4,
            ),
          ],
        ),
      );
    }
  }

  static col_5(context, widget1, widget2, widget3, widget4, widget5) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: widget1,
            ),
            Expanded(
              flex: 2,
              child: widget2,
            ),
            Expanded(
              flex: 2,
              child: widget3,
            ),
            Expanded(
              flex: 2,
              child: widget4,
            ),
            Expanded(
              flex: 2,
              child: widget5,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: widget1,
            ),
            Expanded(
              flex: 2,
              child: widget2,
            ),
            Expanded(
              flex: 2,
              child: widget3,
            ),
            Expanded(
              flex: 2,
              child: widget4,
            ),
            Expanded(
              flex: 2,
              child: widget5,
            ),
          ],
        ),
      );
    }
  }

  static col_6(context, widget1, widget2, widget3, widget4, widget5, widget6) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: widget1,
            ),
            Expanded(
              flex: 2,
              child: widget2,
            ),
            Expanded(
              flex: 2,
              child: widget3,
            ),
            Expanded(
              flex: 2,
              child: widget4,
            ),
            Expanded(
              flex: 2,
              child: widget5,
            ),
            Expanded(
              flex: 2,
              child: widget6,
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: widget1,
            ),
            Expanded(
              flex: 2,
              child: widget2,
            ),
            Expanded(
              flex: 2,
              child: widget3,
            ),
            Expanded(
              flex: 2,
              child: widget4,
            ),
            Expanded(
              flex: 2,
              child: widget5,
            ),
            Expanded(
              flex: 2,
              child: widget6,
            ),
          ],
        ),
      );
    }
  }
}
