import "package:flutter/material.dart";
import "lista_tocaka.dart";
import "../tocke_za_organ/tocke_za_organ.dart";

class IzborTocaka extends StatefulWidget {
  @override
  _IzborTocakaState createState() => _IzborTocakaState();
}

class _IzborTocakaState extends State<IzborTocaka> {
  String searchTerm = '';
  var tiles = meridians;

  void _search(String searchTerm) {
    setState(() {
      tiles = {};
      meridians.forEach((final String organName, final value) {
        if (organName.toUpperCase().indexOf(searchTerm.toUpperCase()) > -1)
          tiles[organName] = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Izbor točaka"),
          centerTitle: true,
          // backgroundColor: Colors.white,
        ),
        body: Container(
            child: Column(
          children: [
            // Search box
            Padding(
              padding:
                  EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 15),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Pretraži...'),
                onChanged: _search,
              ),
            ),
            // Tile list
            Expanded(
                child: ListView.builder(
              itemCount: tiles.length,
              itemBuilder: (BuildContext context, int index) {
                String organName = tiles.keys.elementAt(index);
                return ListTile(
                  subtitle: Text(tiles[organName].keys.toString()),
                  title: Text(organName),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TockeZaOrgan(organName, tiles[organName])));
                    // modal(key, tockeZaPrikaz[key]);
                  },
                );
              },
            )),
          ],
        )));
  }
}
