import 'package:flutter/material.dart';
import "./dataset.dart";
import "../../models/meridians_dataset.dart";

extension StringExtension on String {
  String normalize() {
    return this.split("_").join(" ");
  }
}

// ignore: must_be_immutable
class MeridianImage extends StatelessWidget {
  MeridianDetails image;
  double renderedWidth;
  List<String> pointsToRender = [];
  MeridianImage(this.image, this.pointsToRender, this.renderedWidth);

  Future<void> _meridianInfoDialog(
      BuildContext context, String meridianName) async {
    String id = meridianName.substring(0, meridianName.length - 2);
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(meridianNames[id]),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(descriptions[id]),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Zatvori'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double scaleFactor = image.imgw / renderedWidth;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.all(10),
          child: Row(children: <Widget>[
            Text(
              meridianNames[
                  image.imgName.substring(0, image.imgName.length - 2)],
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  _meridianInfoDialog(context, image.imgName);
                }),
          ])),
      InteractiveViewer(
        boundaryMargin: EdgeInsets.all(0),
        child: Stack(
          children: [
            Image.asset('data/meridijani/crops/${image.imgName}.jpg'),
            for (var point in image.annotationDetails)
              for (var point2 in this.pointsToRender)
                if (point.label.toLowerCase() == point2)
                  Positioned(
                    top: point.top / scaleFactor,
                    left: point.left / scaleFactor,
                    child: Container(
                        height: point.height / scaleFactor,
                        width: point.width / scaleFactor,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.3),
                          border: Border(
                            top: BorderSide(
                                width: 2.0,
                                color: Colors.redAccent.withOpacity(0.1)),
                            left: BorderSide(
                                width: 2.0,
                                color: Colors.redAccent.withOpacity(0.1)),
                            right: BorderSide(
                                width: 2.0,
                                color: Colors.redAccent.withOpacity(0.1)),
                            bottom: BorderSide(
                                width: 2.0,
                                color: Colors.redAccent.withOpacity(0.1)),
                          ),
                        )),
                  ),
          ],
        ),
      )
    ]);
  }
}

class MeridianImageList extends StatelessWidget {
  final List<MeridianDetails> meridiansToShow = [];
  final List<String> points = [];

  MeridianImageList(String points) {
    // Find points in meridian dataset and figure out which meridians need to be visualized
    final List<String> alreadyAdded = [];
    // For each point from constructor argument
    for (var point in points.split(",")) {
      var pointPcs = point.replaceAll("#", "").toLowerCase().trim().split(" ");
      var pointType = pointPcs[0];
      var pointNumber = pointPcs[1];
      point = "$pointType $pointNumber";
      this.points.add(point);
      // For each meridian from dataset
      for (var meridian in meridians) {
        var md = MeridianDetails.fromJson(meridian);
        // For each point in meridian
        for (var point2 in meridian["points"]) {
          // If this meridian needs to be visualized and was not already picked, add it
          if (point == point2.toLowerCase() &&
              alreadyAdded.indexOf(md.imgName) == -1) {
            this.meridiansToShow.add(md);
            alreadyAdded.add(md.imgName);
            break;
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(children: [
      for (MeridianDetails meridian in this.meridiansToShow)
        MeridianImage(meridian, this.points, w)
    ]);
  }
}
