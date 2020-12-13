import "package:flutter/material.dart";
import "lista_tocaka.dart";

class TockeXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Točke Xi"),
        centerTitle: true,
        // backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                  border: TableBorder.all(),
                  children: tocke
                      .map((row) => TableRow(children: [
                            Column(children: [Text(row[0])]),
                            Column(children: [Text(row[1])]),
                          ]))
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}
