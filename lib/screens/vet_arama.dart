import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:proje_1/servisler/geolocator_servis.dart';
import 'package:proje_1/servisler/vetisaretci_servisi.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:proje_1/modeller/vet.dart';
import 'package:url_launcher/url_launcher.dart';

class Arama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);
    final yerServisi = Provider.of<Future<List<Vet>>>(context);
    final geoservis = GeoLocatorService();
    final isaretciServisi = IsaretciServisi();
    return FutureProvider(
      create: (context) => yerServisi,
      child: Scaffold(
        backgroundColor: Color(0xff64e9ee),
        body: (currentPosition != null)
            ? Consumer<List<Vet>>(
                builder: (_, places, __) {
                  var isaretciler = (places != null)
                      ? isaretciServisi.isaretcigetir(places)
                      : List<Marker>();
                  return (places != null)
                      ? Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width,
                              child: GoogleMap(
                                initialCameraPosition: CameraPosition(
                                    target: LatLng(currentPosition.latitude,
                                        currentPosition.longitude),
                                    zoom: 13.0),
                                zoomGesturesEnabled: true,
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                markers: Set<Marker>.of(isaretciler),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: places.length,
                                  itemBuilder: (context, index) {
                                    return FutureProvider(
                                      create: (context) =>
                                          geoservis.getDistance(
                                              currentPosition.latitude,
                                              currentPosition.longitude,
                                              places[index]
                                                  .geometri
                                                  .location
                                                  .lat,
                                              places[index]
                                                  .geometri
                                                  .location
                                                  .lng),
                                      child: Card(
                                        color: Color(0xffFFEBEB),
                                        child: ListTile(
                                            title: Text(places[index].isim),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                (places[index].derece != null)
                                                    ? Row(
                                                        children: [
                                                          RatingBarIndicator(
                                                            rating:
                                                                places[index]
                                                                    .derece,
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.amber,
                                                            ),
                                                            itemCount: 5,
                                                            itemSize: 10.0,
                                                            direction:
                                                                Axis.horizontal,
                                                          )
                                                        ],
                                                      )
                                                    : Row(),
                                                Consumer<double>(builder:
                                                    (context, meters, widget) {
                                                  return (meters != null)
                                                      ? Text(
                                                          '${places[index].civar} \u00b7 ${(meters / 1000).round()} Km')
                                                      : Container();
                                                })
                                              ],
                                            ),
                                            trailing: IconButton(
                                                icon: Icon(
                                                  Icons.directions,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {
                                                  _yeriBul(
                                                      places[index]
                                                          .geometri
                                                          .location
                                                          .lat,
                                                      places[index]
                                                          .geometri
                                                          .location
                                                          .lng);
                                                })),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        )
                      : Center(child: CircularProgressIndicator());
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  void _yeriBul(double lat, double lng) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Yapılamadı $url';
    }
  }
}
