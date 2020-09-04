import 'package:flutter/material.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/modeller/karsilastirici.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:proje_1/screens/secim.dart';
import 'dart:io';

import '../modeller/hayvan_secim.dart';

String ikr = "";
String ism = "";
String hayvanadi;

class Ekran extends StatefulWidget {
  @override
  _EkranState createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  _EkranState() {
    Sstorage.readData().then((dgr) {
      setState(() {
        hayvanadi = dgr;
        ikr = hayvanadi;
      });
    });
    Storage.readData().then((value) {
      setState(() {
        ism = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'HOŞGELDİNİZ',
                    style: TextStyle(
                        fontFamily: 'coolvetica',
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Str(),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: RaisedButton(
                      color: Colors.amberAccent,
                      child: Text('Hayvanımızı seçelim!',
                          style: GoogleFonts.sairaCondensed()),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Secim()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text("Uygulamayı Terk etmek üzeresiniz"),
            content: new Text("Çıkmak istediğinizden emin misiniz"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('Hayır'),
              ),
              new FlatButton(
                onPressed: () => exit(0),
                child: new Text('Evet'),
              ),
            ],
          ),
        )) ??
        false;
  }
}

class Str extends StatelessWidget {
  final karsilastirici = Karsilastirici();
  @override
  Widget build(BuildContext context) {
    if (karsilastirici.resimkarsilastirici(ikr) == "boş") {
      return Container();
    } else {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan[200]),
        child: InkWell(
          onTap: () => karsilastirici.sayfakarsilastirici(context, ism),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ikr,
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'Roboto'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage(karsilastirici.resimkarsilastirici(ikr)),
              )
            ],
          ),
        ),
      );
    }
  }
}
