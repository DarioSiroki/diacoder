import "package:flutter/material.dart";
import 'bolesti.dart';
import '../tocke_za_organ/tocke_za_organ.dart';

class IzborTocakaPremaOrganu extends StatefulWidget {
  final String searchTerm = '';

  @override
  _IzborTocakaPremaOrganuState createState() => _IzborTocakaPremaOrganuState();
}

class _IzborTocakaPremaOrganuState extends State<IzborTocakaPremaOrganu> {
  var tiles = meridians;

  void search(String searchTerm) {
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
          title: Text("Izbor točaka prema organu"),
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
                onChanged: search,
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
                  },
                );
              },
            )),
          ],
        )));
  }
}
