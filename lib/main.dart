import 'package:flutter/material.dart';
import 'package:location_app/locations.dart';
import 'package:location_app/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
          backgroundColor: Colors.orange[900],
        ),
        textTheme:
            TextTheme(headline1: TitleBarStyle, bodyText1: Body1TextStyle),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Locations'),
            leading: Icon(Icons.map, color: Colors.white),
          ),
          body: Locations()),
    );
  }
}
