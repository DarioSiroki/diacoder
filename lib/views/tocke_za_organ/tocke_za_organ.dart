import "package:flutter/material.dart";
import "../vizualizacija_tocaka/vizualizacija_tocaka.dart";

extension StringExtension on String {
  String capitalize() {
    return this
        .split(" ")
        .map((letter) => '${letter[0].toUpperCase()}${letter.substring(1)}')
        .join(" ");
  }
}

class TockeZaOrgan extends StatelessWidget {
  final String title;
  final Map<String, String> popis;

  TockeZaOrgan(this.title, this.popis);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: popis.keys.length,
              itemBuilder: (BuildContext context, int index) {
                String key = popis.keys.elementAt(index);
                return ListTile(
                  subtitle: Text(popis[key].replaceAll("#", "")),
                  title: Text(key.capitalize()),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contest) => VizualizacijaTocaka(
                                key.capitalize(), popis[key])));
                  },
                );
              })),
    );
  }
}
