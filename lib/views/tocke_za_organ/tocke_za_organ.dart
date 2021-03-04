import "package:flutter/material.dart";
import '../lista_tocaka/lista_tocaka.dart';

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

  String _formatSubtitle(String text) {
    var pcs = text.split(",");
    if (pcs.length > 8) {
      return pcs.getRange(0, 8).join(",") + "...";
    }
    return text;
  }

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
                  subtitle:
                      Text(_formatSubtitle(popis[key].replaceAll("#", ""))),
                  title: Text(key.capitalize()),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ListaTocaka(key.capitalize(), popis[key])));
                  },
                );
              })),
    );
  }
}
