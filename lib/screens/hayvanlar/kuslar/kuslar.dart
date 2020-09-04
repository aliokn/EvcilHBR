import 'package:flutter/material.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/kakadu.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/muhabbet.dart';
import 'package:proje_1/screens/hayvanlar/kuslar/papagan.dart';

class KusSecim extends StatefulWidget {
  @override
  _KusSecimState createState() => _KusSecimState();
}

class _KusSecimState extends State<KusSecim> {
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
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/muhabbet.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Muhabbet()));
                    },
                    child: Center(
                      child: Text(
                        "Muhabbet Kuşu",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/kus2.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kakadu()));
                    },
                    child: Center(
                      child: Text(
                        "Kakadu",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/papagan.jpg"),
                        fit: BoxFit.fill)),
                child: InkWell(
                    splashColor: Colors.teal,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Papagan()));
                    },
                    child: Center(
                      child: Text(
                        "Ara(Macaw) Papağanı",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
