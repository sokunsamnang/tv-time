import 'package:flutter/material.dart';
import 'package:tvmedia/screen/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TV Media',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,
      ),
      home: Homepage(),
    );
  }
}
