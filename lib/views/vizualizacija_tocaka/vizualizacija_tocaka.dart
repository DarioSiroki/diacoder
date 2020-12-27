import "package:flutter/material.dart";
import "../../components/meridian_visualization/meridian_visualization.dart";

class VizualizacijaTocaka extends StatelessWidget {
  final String tocke;
  final String title;

  VizualizacijaTocaka(this.title, this.tocke);

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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)));
      } else {
        result.add(Text(pt, style: TextStyle(fontSize: 20)));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: ListView(padding: EdgeInsets.all(0), children: [
          Text("Lista točaka",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4),
          Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                children: [...buildPoints(this.tocke)],
                alignment: WrapAlignment.center,
              )),
          MeridianImageList(this.tocke)
        ]));
    // Container(
    //     margin: EdgeInsets.all(10),
    //     child: Wrap(
    //       children: [...buildPoints(this.tocke), this.slike],
    //     )));
  }
}
