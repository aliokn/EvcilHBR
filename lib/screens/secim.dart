import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/balik.dart';
import 'package:proje_1/screens/hayvanlar/hamster.dart';
import 'package:proje_1/screens/hayvanlar/kaplumbaga.dart';

import 'package:proje_1/screens/hayvanlar/Kuslar/kuslar.dart';
import 'package:proje_1/screens/hayvanlar/kediler/kediler.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/kopekler.dart';
import 'package:proje_1/screens/hayvanlar/surungenler/surungenler.dart';

import 'package:proje_1/screens/hayvanlar/tavsan.dart';

class Secim extends StatefulWidget {
  @override
  _SecimState createState() => _SecimState();
}

class _SecimState extends State<Secim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF390099),
        body: Container(
            child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  splashColor: Colors.cyan.withAlpha(30),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Kopek()))
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/dogcover.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        "Köpek",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                splashColor: Colors.cyan.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kediler()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/catcover.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Kedi",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                splashColor: Colors.cyan.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KusSecim()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/birdcover.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Kuş",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                splashColor: Colors.cyan.withAlpha(30),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Balik()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/fishcover.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Balık",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tavsan()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/bunnycover.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Tavşan",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                splashColor: Colors.cyan.withAlpha(30),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Surungenler()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/reptilecover.jpg"),
                          fit: BoxFit.fill)),
                  child: Center(
                    child: Text(
                      "Sürüngen",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kaplumbaga()))
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/turtlecover.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Kaplumbağa",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/hamstercover.jpg"),
                        fit: BoxFit.cover)),
                child: InkWell(
                  splashColor: Colors.cyan.withAlpha(30),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hamster()))
                  },
                  child: Center(
                    child: Text(
                      "Hamster",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}

BoxDecoration dek() {
  return BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.all((Radius.circular(63))));
}
