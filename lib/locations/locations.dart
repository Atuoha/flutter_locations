import 'package:flutter/material.dart';
import '../models/Location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    void _onLocationTap(BuildContext context, int locationId) {
      print(locationId);
    }

    final locations = Location.fetchAll();
    return ListView(
      children: [
        ...(locations).map((location) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: GestureDetector(
                child: Text(
                  location.name,
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => _onLocationTap(context, location.id),
            )
          );
        }).toList()
      ],
    );
  }
}
