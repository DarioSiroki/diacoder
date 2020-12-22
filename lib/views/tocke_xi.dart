import "package:flutter/material.dart";
import "../components/diacoder_table.dart";

class TockeXi extends StatelessWidget {
  final tocke = const [
    ["Meridijan", "Točka Xi"],
    ["pluća", "P 6 Kongzui"],
    ["debelo crijevo", "IC 7 Wenliu"],
    ["želudac", "G 34 Liangqiu"],
    ["slezena i gušterača", "LP 8 Diji"],
    ["srce", "C 6 Yinxi"],
    ["tanko crijevo", "IT 6 Yanglao"],
    ["mokraćni mjehur", "VU 63 Jinmen"],
    ["bubreg", "R 5 Shuiquan"],
    ["perikard", "Pc 4 Ximen"],
    ["trodijelni grijač", "TR 7 Huizong"],
    ["žučni mjehur", "VF 36 Waigiu"],
    ["jetra", "H 6 Zhongdu"],
    ["Yingiao", "R 8 Jiaoxin"],
    ["Yinwei", "R 9 Zhubin"],
    ["Yangqiao", "VU 59 Fuyang"],
    ["Yangwei", "VF 35 Yangjiao"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Točke Xi"),
          centerTitle: true,
          // backgroundColor: Colors.white,
        ),
        body: DiacoderTable(tocke));
  }
}
