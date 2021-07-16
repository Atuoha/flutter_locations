import 'package:flutter/material.dart';
import './image_banner.dart';
import './text_section.dart';
import '../../models/Location.dart';

class LocationDetails extends StatelessWidget {
  final int _locationId;
  LocationDetails(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        actions: [Icon(Icons.location_city, color: Colors.white)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          ...(location.facts).map((fact) {
            return TextSection(fact.title, fact.body);
          }).toList()
        ],
      ),
    );
  }
}
