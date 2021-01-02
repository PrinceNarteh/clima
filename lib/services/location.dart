import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longtitude;

  Location({this.latitude, this.longtitude});

  Future<void> getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longtitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
