import "package:flutter/material.dart";
import './tocke_shu_i_mu.dart';
import "./tocke_xi.dart";
import "./tocke_yuan_i_luo.dart";
import 'izbor_tocaka/izbor_tocaka_prema_organu.dart';
import 'izbor_tocaka/izbor_tocaka_prema_poremecaju.dart';

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
                  MaterialPageRoute(builder: (context) => TockeShuIMu()));
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
                  context, MaterialPageRoute(builder: (context) => TockeXi()));
            },
          ),
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Točke Yuan i Luo"),
                subtitle:
                    Text("Analitičke točke za dijagnozu bolesti 12 meridijana"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TockeYuanILuo()));
            },
          ),
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Izbor točaka prema organima"),
                subtitle: Text("Liječenje poremećaja organa i funkcija"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IzborTocakaPremaOrganu()));
            },
          ),
          InkWell(
            child: Card(
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text("Izbor točaka prema poremećaju"),
                subtitle: Text("Liječenje poremećaja organa i funkcija"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IzborTocakaPremaPoremecaju()));
            },
          )
        ]),
      ),
    );
  }
}
