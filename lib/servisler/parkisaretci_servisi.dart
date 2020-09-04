import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:proje_1/modeller/park.dart';

class ParkIsaretciServisi {
  List<Marker> isaretcigetir(List<Park> yer) {
    var isaretci = List<Marker>();
    yer.forEach((yer) {
      Marker isaret = Marker(
          markerId: MarkerId(yer.isim),
          draggable: false,
          infoWindow: InfoWindow(title: yer.isim, snippet: yer.civar),
          position:
              LatLng(yer.geometri.location.lat, yer.geometri.location.lng));
      isaretci.add(isaret);
    });

    return isaretci;
  }
}
