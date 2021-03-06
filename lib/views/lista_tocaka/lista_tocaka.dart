import "package:flutter/material.dart";
import '../../components/meridian_visualization/meridian_visualization.dart';
import '../../components/meridian_visualization/dataset.dart';
import '../../models/meridians_dataset.dart';
import '../../components/diacoder_table.dart';

class ListaTocaka extends StatelessWidget {
  final String points;
  final String title;

  ListaTocaka(this.title, this.points);

  Widget table() {
    Map<String, List<String>> table = {};
    final meridianDataset = [];
    meridians.forEach((meridian) {
      meridianDataset.add(MeridianDetails.fromJson(meridian));
    });
    var pts = this.points.split(",").map((t) => t.trim());
    pts.forEach((String pt) {
      for (var j = 0; j < meridianDataset.length; ++j) {
        var meridian = meridianDataset[j];
        for (var i = 0; i < meridian.points.length; ++i) {
          var point = meridian.points[i];
          if (point == pt.replaceFirst("#", "")) {
            String id =
                meridian.imgName.substring(0, meridian.imgName.length - 2);
            if (!table.containsKey(id))
              table[id] = [pt];
            else
              table[id].add(pt);
            return;
          }
        }
      }
    });
    final List<List<String>> rows = [
      ["Meridijan", "Točke"]
    ];
    table.forEach((key, value) {
      rows.add([meridianNames[key], value.join(",")]);
    });
    return DiacoderTable(rows);
  }

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
          Padding(
              padding: EdgeInsets.all(10),
              child: Text("Lista točaka",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4)),
          table(),
          MeridianImageList(this.points)
        ]));
  }
}
