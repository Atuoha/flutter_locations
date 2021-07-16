import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);


  static List<Location> fetchAll() {
    return [
      Location(1, 'Port Harcourt City', 'assets/images/oip.jpg', [
        LocationFact('Summary',
            'Port Harcourt City is a home of peace and freedom, a place you\'ll come to and have the bests of experiences'),
        LocationFact('Expectations',
            'Being a best place sometimes turns to be another under rating of its entirety and more'),
      ]),
      Location(2, 'Enugu City', 'assets/images/oip1.jpg', [
        LocationFact('Summary',
            'Enugu City is a home of peace and freedom, a place you\'ll come to and have the bests of experiences'),
        LocationFact('Expectations',
            'Being a best place sometimes turns to be another under rating of its entirety and more'),
      ]),
      Location(3, 'Lagos City', 'assets/images/oip2.jpg', [
        LocationFact('Summary',
            'Lagos City is a home of peace and freedom, a place you\'ll come to and have the bests of experiences'),
        LocationFact('Expectations',
            'Being a best place sometimes turns to be another under rating of its entirety and more'),
      ]),
    ];
  }

  
  static Location? fetchById(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
