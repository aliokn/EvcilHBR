import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/alm.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/bldg.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/chv.dart';
import 'package:proje_1/screens/hayvanlar/kopekler/golden.dart';

class Kopek extends StatefulWidget {
  @override
  _KopekState createState() => _KopekState();
}

class _KopekState extends State<Kopek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000272),
      body: Container(
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/k1.jpg"),
                        fit: BoxFit.fill)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Golden()));
                    },
                    child: Center(
                        child: Text(
                      "Golden Retriever",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/k2.jpg"),
                        fit: BoxFit.cover)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Alm()));
                    },
                    child: Center(
                        child: Text(
                      "Alman Kurdu",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/k3.jpg"),
                        fit: BoxFit.cover)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bldg()));
                    },
                    child: Center(
                        child: Text(
                      "Bulldog",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/k4.jpg"),
                        fit: BoxFit.cover)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chiu()));
                    },
                    child: Center(
                        child: Text(
                      "Chihuahua",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
