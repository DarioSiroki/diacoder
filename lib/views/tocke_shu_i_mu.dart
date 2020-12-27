import "package:flutter/material.dart";
import "../components/diacoder_table.dart";
import "../components/meridian_visualization/meridian_visualization.dart";

class TockeShuIMu extends StatelessWidget {
  final rows = const [
    ["Unutarnji organ", "Točka Shu", "Točka Mu"],
    ["pluća", "VU 13 Feishu", "P 1 Zhongfu"],
    ["perikard", "VU 14 Jueyinshu", "RM 17 Shanzhong"],
    ["srce", "VU 15 Xinshu", "RM 14 Juque"],
    ["jetra", "VU 18 Ganshu", "H 14 Qimen"],
    ["žučni mjehur", "VU 19 Danshu", "VF 24 Riyue"],
    ["slezena-pankreas", "VU 20 Pishu", "H 13 Zhangmen"],
    ["želudac", "VU 21 Weishu", "RM 12 Zhongwan"],
    ["trodijelni grijač", "VU 22 Sanjiaoshu", "RM 5 Shimen"],
    ["bubreg", "VU 23 Shenshu", "VF 25 Jingmen"],
    ["debelo crijevo", "VU 25 Dahangshu", "G 25 Tianshu"],
    ["tanko crijevo", "VU 27 Xiaochangshu", "RM 4 Guanyuan"],
    ["mokraćni mjehur", "VU 28 Pangguangshu", "RM 3 Zhongji"]
  ];

  final shuPoints =
      "VU 13,VU 14,VU 15,VU 18,VU 19,VU 20,VU 21,VU 22,VU 23,VU 25,VU 27,VU 28";
  final muPoints =
      "P 1,RM 17,RM 14,H 14,VF 24,H 13,RM 12,RM 5,VF 25,G 25,RM 4,RM 3";

  @override
  Widget build(BuildContext context) {
    TextStyle headlineStyle = Theme.of(context).textTheme.headline4;
    return Scaffold(
        appBar: AppBar(
          title: Text("Točke Shu i Mu"),
          centerTitle: true,
          // backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          DiacoderTable(rows),
          Text(
            "Točke Shu",
            style: headlineStyle,
            textAlign: TextAlign.center,
          ),
          MeridianImageList(shuPoints),
          Text(
            "Točke Mu",
            style: headlineStyle,
            textAlign: TextAlign.center,
          ),
          MeridianImageList(muPoints)
        ]));
  }
}
