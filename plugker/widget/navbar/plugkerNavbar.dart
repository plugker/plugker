import 'package:flutter/material.dart';

import '../../engine/width/PlugkerWidth.dart';

class PlugkerNavbar {
  static drawer(context, headerWidget, navigationLists, colorNavbar) {
    if (MediaQuery.of(context).size.width < 767) {
      return Drawer(
        child: Container(
          color: colorNavbar,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: headerWidget,
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: navigationLists.length,
                  itemBuilder: (context, index) {
                    final item = navigationLists[index];
                    return Container(
                      color: colorNavbar,
                      child: MaterialButton(
                        hoverColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, item.path);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                item.icon,
                                SizedBox(
                                  width: 10,
                                ),
                                item.text,
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffa1a1a1),
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  static sideBar(context, headerWidget, navigationLists, colorNavbar) {
    if (MediaQuery.of(context).size.width > 767) {
      return Container(
        width: PlugkerWidth.size(context, 2),
        color: colorNavbar,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: headerWidget,
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: navigationLists.length,
                itemBuilder: (context, index) {
                  final item = navigationLists[index];
                  return Container(
                    child: MaterialButton(
                      hoverColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, item.path);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              item.icon,
                              SizedBox(
                                width: 10,
                              ),
                              item.text,
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xffa1a1a1),
                            size: 13,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    } else {
      return Expanded(
        flex: 0,
        child: Text(""),
      );
    }
  }
}
