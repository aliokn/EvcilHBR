import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Barinak extends StatefulWidget {
  @override
  _BarinakState createState() => _BarinakState();
}

class _BarinakState extends State<Barinak> {
  _launchb1URL() async {
    const url = 'https://www.yedikulehayvanbarinagi.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Sayfa Bulunamadı';
    }
  }

  _launchb2URL() async {
    const url = "https://www.uskudar.bel.tr/hayvanbarinagi";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Sayfa Bulunamadı';
    }
  }

  _launchb3URL() async {
    const url =
        "http://www.zeytinburnu.istanbul/Saglik-Hizmetleri-Sahipsiz-Hayvan-Gecici-Bakimevi";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Sayfa Bulunamadı';
    }
  }

  _launchb4URL() async {
    const url =
        "https://www.umraniye.bel.tr/tr/main/hizmetrehberi/veterinerlik-hizmetleri/49";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Sayfa Bulunamadı';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff640AFF),
      body: Container(
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Color(0xff0496ff),
              child: InkWell(
                  onTap: () {
                    _launchb1URL();
                  },
                  child: Container(
                      height: 200,
                      child: Center(
                          child: Text(
                        "Yedikule Hayvan Barınağı",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Color(0xffD81159),
              child: InkWell(
                  onTap: () => _launchb2URL(),
                  child: Container(
                      height: 200,
                      child: Center(
                          child: Text(
                        "Üsküdar Hayvan Barınağı",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Color(0xff04d358),
              child: InkWell(
                  onTap: () => _launchb3URL(),
                  child: Container(
                      height: 200,
                      child: Center(
                          child: Text(
                        "Zeytinburnu Hayvan Barınağı",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Color(0xfff8c630),
              child: InkWell(
                onTap: () => _launchb4URL(),
                child: Container(
                    height: 200,
                    child: Center(
                        child: Text(
                      "Ümraniye Hayvan Barınağı",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
