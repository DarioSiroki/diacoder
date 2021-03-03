import "package:flutter/material.dart";
import 'bolesti.dart';
import '../tocke_za_organ/tocke_za_organ.dart';
import '../lista_tocaka/lista_tocaka.dart';

class IzborTocakaPremaPoremecaju extends StatefulWidget {
  @override
  _IzborTocakaPremaPoremecajuState createState() =>
      _IzborTocakaPremaPoremecajuState();
  final String searchTerm = '';
}

class _IzborTocakaPremaPoremecajuState
    extends State<IzborTocakaPremaPoremecaju> {
  List<Disorder> tiles = disorderList();
  List<Disorder> tilesToRender = disorderList();

  void search(String searchTerm) {
    setState(() {
      tilesToRender = [];
      tiles.forEach((Disorder disorder) {
        if (disorder.name.indexOf(searchTerm.toLowerCase()) > -1) {
          tilesToRender.add(disorder);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Izbor točaka prema poremećaju"),
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
              itemCount: tilesToRender.length,
              itemBuilder: (BuildContext context, int i) {
                return ListTile(
                  subtitle: Text(tilesToRender[i].points.replaceAll("#", "")),
                  title: Text(tilesToRender[i].name.capitalize()),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListaTocaka(
                                tilesToRender[i].name.capitalize(),
                                tilesToRender[i].points)));
                  },
                );
              },
            )),
          ],
        )));
  }
}
