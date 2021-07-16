import 'package:flutter/material.dart';
import 'package:location_app/style.dart';
import 'locations/locations.dart';
import 'screens/location_details/location_details.dart';

void main() => runApp(MyApp());

const LocationsRoute = '/';
const LocationDetailsRoute = '/location_detail';

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
