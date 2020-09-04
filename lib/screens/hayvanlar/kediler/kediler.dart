import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/kediler/bshr.dart';
import 'package:proje_1/screens/hayvanlar/kediler/chin.dart';
import 'package:proje_1/screens/hayvanlar/kediler/fars.dart';
import 'package:proje_1/screens/hayvanlar/kediler/sfenks.dart';

class Kediler extends StatefulWidget {
  @override
  _KedilerState createState() => _KedilerState();
}

class _KedilerState extends State<Kediler> {
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
                        image: AssetImage("assets/images/kedi1.jpg"),
                        fit: BoxFit.fill)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Brtsh()));
                    },
                    child: Center(
                        child: Text(
                      "British Shorthair",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chin()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/kedi2.jpg"),
                          fit: BoxFit.cover)),
                  height: 200,
                  child: Center(
                      child: Text(
                    "Chinchilla",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
                ),
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
                        image: AssetImage("assets/images/kedi3.jpg"),
                        fit: BoxFit.fill)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fars()));
                    },
                    child: Center(
                        child: Text(
                      "Fars Kedisi",
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
                        image: AssetImage("assets/images/kedi4.jpg"),
                        fit: BoxFit.fill)),
                height: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sfenks()));
                    },
                    child: Center(
                        child: Text(
                      "Sfenks Kedisi",
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
