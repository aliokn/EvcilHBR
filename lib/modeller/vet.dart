import 'package:proje_1/modeller/geometri.dart';

class Vet {
  final String isim;
  final double derece;
  final int kullaniciDereceSayisi;
  final String civar;
  final Geometri geometri;
  Vet(
      {this.geometri,
      this.isim,
      this.derece,
      this.kullaniciDereceSayisi,
      this.civar});
  Vet.fromJson(Map<dynamic, dynamic> parsedJson)
      : isim = parsedJson['name'],
        derece = (parsedJson['rating'] != null)
            ? parsedJson['rating'].toDouble()
            : null,
        kullaniciDereceSayisi = (parsedJson['user_rating_total'] != null)
            ? parsedJson['user_rating_total']
            : null,
        civar = parsedJson['vicinity'],
        geometri = Geometri.fromJson(parsedJson['geometry']);
}
