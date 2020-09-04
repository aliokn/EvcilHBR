import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:proje_1/screens/home.dart';
import 'package:proje_1/modeller/vet.dart';
import 'package:proje_1/modeller/park.dart';
import 'package:proje_1/servisler/geolocator_servis.dart';
import 'package:proje_1/servisler/veteriner_servisi.dart';
import 'package:proje_1/servisler/park_servisi.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final locatorService = GeoLocatorService();
  final yerServisi = VeterinerServisi();
  final yerServisi1 = ParkServisi();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => locatorService.getLocation()),
        ProxyProvider<Position, Future<List<Vet>>>(
          update: (context, position, places) {
            return (position != null)
                ? yerServisi.getPlaces(position.latitude, position.longitude)
                : null;
          },
        ),
        ProxyProvider<Position, Future<List<Park>>>(
          update: (context, position, places) {
            return (position != null)
                ? yerServisi1.getPlaces(position.latitude, position.longitude)
                : null;
          },
        )
      ],
      child: MaterialApp(
        title: 'Hayvan Bakımı',
        debugShowCheckedModeBanner: false,
        home: Ekran(),
      ),
    );
  }
}
