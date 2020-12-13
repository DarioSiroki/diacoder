import "package:flutter/material.dart";

class TockeZaOrgan extends StatelessWidget {
  final String title;
  final Map<String, String> popis;

  TockeZaOrgan(this.title, this.popis);

  List<Widget> buildPoints(String points) {
    List<Widget> result = [];
    var ptArr = points.split(",");
    for (var i = 0; i < ptArr.length; i++) {
      var pt = ptArr[i].trim();
      // add comma for all elements but last one
      if (i != ptArr.length - 1) {
        pt += ",";
      }
      if (pt.startsWith("#")) {
        result.add(Text(pt.replaceFirst("#", ""),
            style: TextStyle(fontWeight: FontWeight.bold)));
      } else {
        result.add((Text(pt)));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              border: TableBorder.all(),
              children: [
                for (var key in popis.keys)
                  TableRow(children: [
                    Column(
                      children: [Text(key)],
                    ),
                    Column(
                      children: buildPoints(popis[key]),
                    ),
                  ])
              ],
            ),
          ])),
    );
  }
}
