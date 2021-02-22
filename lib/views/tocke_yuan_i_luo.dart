import "package:flutter/material.dart";
import '../components/diacoder_table.dart';
import '../components/meridian_visualization/meridian_visualization.dart';

class TockeYuanILuo extends StatelessWidget {
  final rows = const [
    ["Meridijan", "Točka Yuan", "Točka Luo"],
    ["pluća", "P 9 Taiyuan", "IC 6 Pianli"],
    ["debelo crijevo", "IC 4 Hegu", "P 7 Lieque"],
    ["želudac", "G 42 Chongyang", "LP 4 Gongsun"],
    ["slezena i gušterača", "LP 3 Taibai", "G 40 Fenglong"],
    ["srce", "C 7 Shenmen", "IT 7 Zhizheng"],
    ["tanko crijevo", "IT 4 Wangu", "C 5 Tongli"],
    ["mokraćni mjehur", "VU 64 Jinggu", "R 4 Dazhong"],
    ["bubreg", "R 3 Taixi", "VU 58 Feiyang"],
    ["perikard", "Pc 7 Daling", "TR 5 Weiguan"],
    ["trodijelni grijač", "TR 4 Yangchi", "Pc 6 Neugian"],
    ["žučni mjehur", "VF 40 Qiuxu", "H 5 Ligou"],
    ["jetra", "H 3 Taichong", "VF 37 Guangming"],
  ];

  final yuanPoints =
      "P 9,IC 4,G 42,LP 3,C 7,IT 4,VU 64,R 3,Pc 7,TR 4,VF 40,H 3";
  final luoPoints = "IC 6,P 7,LP 4,G 40,IT 7,C 5,R 4,VU 58,TR 5,Pc 6,H 5,VF 37";

  @override
  Widget build(BuildContext context) {
    TextStyle headlineStyle = Theme.of(context).textTheme.headline4;
    return Scaffold(
        appBar: AppBar(
          title: Text("Točke Yuan i Luo"),
          centerTitle: true,
          // backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          DiacoderTable(rows),
          Text(
            "Točke Yuan",
            style: headlineStyle,
            textAlign: TextAlign.center,
          ),
          MeridianImageList(yuanPoints),
          Text(
            "Točke Luo",
            style: headlineStyle,
            textAlign: TextAlign.center,
          ),
          MeridianImageList(luoPoints)
        ]));
  }
}
