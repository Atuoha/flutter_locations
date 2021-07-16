import 'package:flutter/material.dart';
import './image_banner.dart';
import './text_section.dart';
import '../../models/Location.dart';

class LocationDetails extends StatelessWidget {
  final int locationId;
  LocationDetails(this.locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(locationId)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        leading: Icon(Icons.location_city_sharp, color: Colors.white),
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
