import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/balik.dart';
import 'package:proje_1/screens/hayvanlar/hamster.dart';
import 'package:proje_1/screens/hayvanlar/kaplumbaga.dart';
import 'package:proje_1/screens/hayvanlar/kediler/bshr.dart';
import 'package:proje_1/screens/hayvanlar/kediler/chin.dart';
import 'package:proje_1/screens/hayvanlar/kediler/fars.dart';
import 'package:proje_1/screens/hayvanlar/kediler/sfenks.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/alm.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/bldg.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/chv.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/golden.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/kakadu.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/muhabbet.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/papagan.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/bukl.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/ig.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/yl.dart';
import 'package:proje_1/screens/hayvanlar/tavsan.dart';

class Karsilastirici {
  resimkarsilastirici(String b) {
    String yol = "boş";
    if (b == "Tavşanınız") {
      yol = "assets/images/rab.png";
    }
    if (b == "Kaplumbağanız") {
      yol = "assets/images/turt.png";
    }
    if (b == "Hamsterınız") {
      yol = "assets/images/hams.png";
    }
    if (b == "Balığınız") {
      yol = "assets/images/fish.png";
    }
    if (b == "Köpeğiniz") {
      yol = "assets/images/an.png";
    }
    if (b == "Kediniz") {
      yol = "assets/images/cats.png";
    }
    if (b == "Kuşunuz" || b == "Papağanınız" || b == "Muhabbet Kuşunuz") {
      yol = "assets/images/macaw.png";
    }
    if (b == "Bukalemununuz" || b == "İguananız" || b == "Yılanınız") {
      yol = "assets/images/chamel.png";
    }
    return yol;
  }

  void sayfakarsilastirici(BuildContext context, String a) {
    if (a == "Tavşanınız") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Tavsan()));
    }
    if (a == "Kaplumbağanız") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Kaplumbaga()));
    }
    if (a == "Hamsterınız") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Hamster()));
    }
    if (a == "Balığınız") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Balik()));
    }

    if (a == "Papağanınız") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Papagan()));
    }
    if (a == "Muhabbet Kuşunuz") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Muhabbet()));
    }
    if (a == "Golden") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Golden()));
    }
    if (a == "Brit") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Brtsh()));
    }
    if (a == "Chin") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Chin()));
    }
    if (a == "Fars") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Fars()));
    }
    if (a == "Sfenks") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Sfenks()));
    }
    if (a == "Muhabbet") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Muhabbet()));
    }
    if (a == "Kakadu") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Kakadu()));
    }
    if (a == "Bkl") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Bkl()));
    }
    if (a == "Ig") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Ig()));
    }
    if (a == "Yilan") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Yilan()));
    }
    if (a == "Alman") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Alm()));
    }
    if (a == "Bldg") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Bldg()));
    }
    if (a == "Chiu") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Chiu()));
    }
  }
}
