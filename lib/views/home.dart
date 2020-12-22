import "package:flutter/material.dart";
import './tocke_shu_i_mu.dart';
import "./tocke_xi.dart";
import "./izbor_tocaka/izbor_tocaka.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diagnosis Coder"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Točke Shu i Mu"),
                subtitle:
                    Text("Analitičke točke za dijagnozu bolesti 12 meridijana"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contest) => TockeShuIMu()));
            },
          ),
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Točke Xi"),
                subtitle: Text(
                    "Analitičke točke za dijagnozu akutnih bolesti organa"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (contest) => TockeXi()));
            },
          ),
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Izbor točaka"),
                subtitle: Text("Liječenje poremećaja organa i funkcija"),
                // onTap: pogledaj dal ovo radi !!!!!!!!!!!!!!!!!!!!!!!,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contest) => IzborTocaka()));
            },
          )
        ]),
      ),
    );
  }
}
