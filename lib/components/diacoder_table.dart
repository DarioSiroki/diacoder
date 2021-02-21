import "package:flutter/material.dart";

class DiacoderTable extends StatelessWidget {
  final List<List<String>> rows;

  DiacoderTable(this.rows);

  Widget _buildColumn(String text) {
    var pcs = text.split(",");

    return Column(
      children: [
        Wrap(
            children: List.generate(
                pcs.length,
                (i) => Text(
                    pcs[i].replaceAll("#", "") +
                        (i == pcs.length - 1 ? "" : ","),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 2,
                        fontSize: 18,
                        fontWeight: pcs[i].indexOf("#") > -1
                            ? FontWeight.bold
                            : FontWeight.normal))))
      ],
    );
  }

  List<Widget> _buildRow(List<String> row) {
    return List.generate(row.length, (i) => this._buildColumn(row[i]));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.symmetric(
                    inside: BorderSide(width: 1, color: Colors.blue),
                    outside: BorderSide(width: 1)),
                children: List.generate(
                    this.rows.length,
                    (i) => TableRow(
                        decoration: BoxDecoration(
                            color:
                                i % 2 == 0 ? Colors.grey[200] : Colors.white),
                        children: this._buildRow(this.rows[i])))),
          )
        ],
      ),
    );
  }
}
