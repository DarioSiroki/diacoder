import 'package:flutter/material.dart';
import 'views/home.dart';

void main() => runApp(DiacoderApp());

class DiacoderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diacoder',
      theme: ThemeData(),
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(color: Colors.white),
      //   brightness: Brightness.light,
      //   primaryColor: Colors.white,
      //   accentColor: Colors.cyan[600],
      //   fontFamily: 'Georgia',
      //   textTheme: TextTheme(
      //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //     bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind'),
      //   ),
      // ),
      home: HomePage(),
    );
  }
}
