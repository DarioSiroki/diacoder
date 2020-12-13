import "package:flutter/material.dart";
import "lista_tocaka.dart";
import "../tocke_za_organ/tocke_za_organ.dart";

class IzborTocaka extends StatefulWidget {
  @override
  _IzborTocakaState createState() => _IzborTocakaState();
}

class _IzborTocakaState extends State<IzborTocaka> {
  String searchTerm = '';
  var tockeZaPrikaz = tocke;

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
            Padding(
              padding:
                  EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 15),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Pretraži...'),
                onChanged: (String value) {
                  setState(() {
                    searchTerm = value;
                    tockeZaPrikaz = {};
                    tocke.forEach((final String key, final value) {
                      if (key.toUpperCase().indexOf(searchTerm.toUpperCase()) >
                          -1) tockeZaPrikaz[key] = value;
                    });
                  });
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: tockeZaPrikaz.length,
              itemBuilder: (BuildContext context, int index) {
                String key = tockeZaPrikaz.keys.elementAt(index);
                return ListTile(
                  subtitle: Text(tockeZaPrikaz[key].keys.toString()),
                  title: Text(key),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contest) =>
                                TockeZaOrgan(key, tockeZaPrikaz[key])));
                    // modal(key, tockeZaPrikaz[key]);
                  },
                );
              },
            )),
          ],
        )));
  }
}
