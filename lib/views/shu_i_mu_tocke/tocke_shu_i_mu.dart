import "package:flutter/material.dart";
import "lista_tocaka.dart";
import "../../components/diacoder_table.dart";

class TockeShuIMu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Točke Shu i Mu"),
          centerTitle: true,
          // backgroundColor: Colors.white,
        ),
        body: DiacoderTable(tocke));
  }
}
