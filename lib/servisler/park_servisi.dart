import 'package:proje_1/modeller/park.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ParkServisi {
  final key = 'AIzaSyAYDGDYV5r-pimghL6wt1kzSVYIQLnaQHc';
  Future<List<Park>> getPlaces(double lat, double lng) async {
    var cevap = await http.get(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=park&rankby=distance&key=$key');
    var json = convert.jsonDecode(cevap.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Park.fromJson(place)).toList();
  }
}
