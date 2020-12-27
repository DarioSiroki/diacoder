class AnnotationDetails {
  String label;
  double left;
  double top;
  double width;
  double height;
  String color;
  AnnotationDetails();
  AnnotationDetails.fromJson(json)
      : label = json["label"],
        left = json["left"].toDouble(),
        top = json["top"].toDouble(),
        width = json["width"].toDouble(),
        height = json["height"].toDouble(),
        color = json["color"];
}

class MeridianDetails {
  List<String> points;
  double imgw;
  double imgh;
  String imgName;
  List<AnnotationDetails> annotationDetails = [];

  MeridianDetails();
  MeridianDetails.fromJson(json) {
    this.points = json["points"];
    this.imgName = json["img_name"];
    this.imgh = json["imgh"].toDouble();
    this.imgw = json["imgw"].toDouble();
    for (var item in json["annotations"]) {
      this.annotationDetails.add(new AnnotationDetails.fromJson(item));
    }
  }
}
