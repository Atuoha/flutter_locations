import 'package:flutter/material.dart';
import 'package:location_app/screens/location_details/imageView.dart';
import 'package:location_app/screens/location_details/location_details.dart';
import '../models/Location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _onLocationTap(int locationId) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationDetails(locationId)),
      );
    }

    final locations = Location.fetchAll();
    return ListView(
      children: [
        ...(locations).map((location) {
          return Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: GestureDetector(
                child: ImageView(location.imagePath, location.name),
                onTap: () => _onLocationTap(location.id),
              ));
        }).toList()
      ],
    );
  }
}
