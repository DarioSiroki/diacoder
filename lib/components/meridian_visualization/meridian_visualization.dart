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

  @override
  Widget build(BuildContext context) {
    double scaleFactor = image.imgw / renderedWidth;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            meridianNames[image.imgName],
            style: Theme.of(context).textTheme.headline6,
          )),
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
        // For each point in meridian
        for (var point2 in meridian["points"]) {
          // If this meridian needs to be visualized and was not already picked, add it
          if (point == point2.toLowerCase() &&
              alreadyAdded.indexOf(pointType) == -1) {
            this.meridiansToShow.add(MeridianDetails.fromJson(meridian));
            alreadyAdded.add(pointType);
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
