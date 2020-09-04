import 'package:proje_1/modeller/vet.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class VeterinerServisi {
  final key = 'AIzaSyAYDGDYV5r-pimghL6wt1kzSVYIQLnaQHc';
  Future<List<Vet>> getPlaces(double lat, double lng) async {
    var cevap = await http.get(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=veterinary_care&rankby=distance&key=$key');
    var json = convert.jsonDecode(cevap.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Vet.fromJson(place)).toList();
  }
}
