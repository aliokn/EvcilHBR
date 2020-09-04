import 'package:proje_1/modeller/location.dart';

class Geometri {
  final Location location;
  Geometri({this.location});
  Geometri.fromJson(Map<dynamic, dynamic> parsedJson)
      : location = Location.fromJson(parsedJson['location']);
}
