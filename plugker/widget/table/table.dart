import '../btn/btn.dart';
import 'package:flutter/material.dart';

class PlugkerTable {
  static Widget simple(context, title, List header, dynamic datas) {
    return Scaffold(
      body: Container(
        child: Card(
          child: ListView(children: <Widget>[
            Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                for (var item in header)
                  DataColumn(
                    label: Text(
                      item,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    numeric: false,
                  ),
              ],
              rows: [
                for (var data in datas)
                  DataRow(cells: [
                    for (var dataCol2 in data)
                      DataCell(
                        Text(dataCol2),
                      )
                  ]),
                // for (var item2 in folder) {print(item2)}
              ],
            ),
          ]),
        ),
      ),
    );
  }

  static Widget withActionBtn(context, title, List header, dynamic datas, btn) {
    return Scaffold(
      body: Container(
        child: Card(
          child: ListView(children: <Widget>[
            Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                for (var item in header)
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        item,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ),
                DataColumn(label: Text("Action")),
              ],
              rows: [
                for (var data in datas)
                  DataRow(cells: [
                    for (var dataCol2 in data)
                      DataCell(
                        Text(dataCol2),
                      ),
                    DataCell(
                      Container(
                        child: Row(
                          children: [
                            for (var buttons in btn)
                              Container(
                                child: Row(
                                  children: [
                                    Btn.custom(context, buttons[0], buttons[2],
                                        data, buttons[1]),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                ),
                              )
                            //
                          ],
                        ),
                      ),
                    )
                  ]),

                // for (var item2 in folder) {print(item2)}
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
